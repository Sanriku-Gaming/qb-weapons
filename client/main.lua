-- Variables
local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local CurrentWeaponData, CanShoot, MultiplierAmount, oldAmmoAmount = {}, true, 0, 0
local shots = 0

-------------------------------- FUNCTIONS --------------------------------

local function jamText()
    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName('~INPUT_RELOAD~ to clear jam')
    EndTextCommandDisplayHelp(0, 0, 1, -1)
end

local function isPlayerAWitness(witnesses)
    for k, v in pairs(witnesses) do
        if v == PlayerPedId() then
            return true
        end
    end
    return false
end

local jammed = false
local function listen4Unjam(ped, weapon, ammo)
    jammed = true
    CreateThread(function()
        while jammed do
            Wait(0)
            jamText()
            if (IsControlJustReleased(0, 45) or IsDisabledControlJustReleased(0, 45)) then
                TaskReloadWeapon(ped)
                SetPedAmmo(ped, weapon, ammo)
                SetAmmoInClip(ped, weapon, ammo)
                jammed = false
            end
        end
    end)
end

local function getConfigWeaponAttachments(weapon)
    return WeaponAttachments[weapon]
end
exports('getConfigWeaponAttachments', getConfigWeaponAttachments)

-------------------------------- HANDLERS --------------------------------

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.TriggerCallback('weapons:server:GetConfig', function(RepairPoints)
        for k, data in pairs(RepairPoints) do
            Config.RepairPoints[k].IsRepairing = data.IsRepairing
            Config.RepairPoints[k].RepairingData = data.RepairingData
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    for k in pairs(Config.RepairPoints) do
        Config.RepairPoints[k].IsRepairing = false
        Config.RepairPoints[k].RepairingData = {}
    end
end)

---Event that is triggered for gunshots.
---@param witnesses table  array of peds that witnessed the shots
---@param ped number  the ped that shot the gun
AddEventHandler('CEventGunShot', function(witnesses, ped)
    -- The ped that shot the gun must be the player.
    if PlayerPedId() ~= ped then return end
    -- This event can be triggered multiple times for a single gunshot, so we only want to run the code once.
    -- We can do this by checking if the player is a witness. If there are no witnesses, then the player is the shooter.
    if witnesses and not isPlayerAWitness(witnesses) then return end
    local weapon = GetSelectedPedWeapon(ped)
    local weaponName = QBCore.Shared.Weapons[weapon].name
    local weaponsConfig = Config.WeaponData[weaponName]
    local ammo = GetAmmoInPedWeapon(ped, weapon)
    local _, clipAmmo = GetAmmoInClip(ped, weapon)
    local chance = Config.JamChance
    if math.random(1, chance) == 1 and clipAmmo > 0 then
        SetAmmoInClip(ped, weapon, 0)
        SetPedAmmo(ped, weapon, 0)
        listen4Unjam(ped, weapon, clipAmmo)
    end
    TriggerServerEvent('weapons:server:UpdateWeaponAmmo', CurrentWeaponData, tonumber(clipAmmo))
    if MultiplierAmount <= 0 then return end
    TriggerServerEvent('weapons:server:UpdateWeaponQuality', CurrentWeaponData, MultiplierAmount)
    MultiplierAmount = 0

    
    local tv = 0
    local p
    if not weaponsConfig then return end
    if weaponsConfig.recoil then
        if GetFollowPedCamViewMode() ~= 4 then
            if weaponsConfig.shake then
                ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', weaponsConfig.shake)
            end
            repeat
                if IsPedInAnyVehicle(ped) then return end
                Wait(0)
                SetWeaponAnimationOverride(ped, GetHashKey('Default'))
                p = GetGameplayCamRelativePitch()
                SetGameplayCamRelativePitch(p + 0.1, 0.5)
                tv = tv + 0.1
            until tv >= weaponsConfig.recoil
        else
            if weaponsConfig.shake then
                ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', weaponsConfig.shake)
            end
            repeat
                if IsPedInAnyVehicle(ped) then return end
                Wait(0)
                SetWeaponAnimationOverride(ped, GetHashKey('FirstPersonAiming'))
                p = GetGameplayCamRelativePitch()
                if weaponsConfig.recoil > 0.1 then
                    SetGameplayCamRelativePitch(p + 0.6, 1.2)
                    tv = tv + 0.6
                else
                    SetGameplayCamRelativePitch(p + 0.016, 0.333)
                    tv = tv + 0.1
                end
            until tv >= weaponsConfig.recoil
        end
    end
end)

AddEventHandler('weapons:client:DrawWeapon', function(weapon)
    local playerPed = PlayerPedId()
    local weaponsConfig = weapon ~= nil and Config.WeaponData[weapon] or false
    if weaponsConfig and weaponsConfig.modifier then
        SetWeaponDamageModifier(joaat(weapon), weaponsConfig.modifier)
    end
end)
-------------------------------- EVENTS --------------------------------

RegisterNetEvent('weapons:client:SyncRepairShops', function(NewData, key)
    Config.RepairPoints[key].IsRepairing = NewData.IsRepairing
    Config.RepairPoints[key].RepairingData = NewData.RepairingData
end)

RegisterNetEvent('addAttachment', function(component)
    local ped = PlayerPedId()
    local weapon = GetSelectedPedWeapon(ped)
    local WeaponData = QBCore.Shared.Weapons[weapon]
    GiveWeaponComponentToPed(ped, GetHashKey(WeaponData.name), GetHashKey(component))
end)

RegisterNetEvent('weapons:client:EquipTint', function(tint)
    local player = PlayerPedId()
    local weapon = GetSelectedPedWeapon(player)
    SetPedWeaponTintIndex(player, weapon, tint)
end)

RegisterNetEvent('weapons:client:SetCurrentWeapon', function(data, bool)
    if data ~= false then
        CurrentWeaponData = data
    else
        CurrentWeaponData = {}
    end
    CanShoot = bool
end)

RegisterNetEvent('weapons:client:SetWeaponQuality', function(amount)
    if CurrentWeaponData and next(CurrentWeaponData) then
        TriggerServerEvent('weapons:server:SetWeaponQuality', CurrentWeaponData, amount)
    end
end)

local reloading = false
local function ReloadWeapon()    
    local ped = PlayerPedId()
    if not reloading and IsPedArmed(ped, 4|2) then
        ClearPedTasks(ped)
        reloading = true
        local weapon = GetSelectedPedWeapon(ped)
        local ammoType = QBCore.Shared.Weapons[weapon]['ammotype']
        local ammoItem = Config.AmmoItems[ammoType]
        if not ammoItem then return end
        if CurrentWeaponData then
            QBCore.Functions.TriggerCallback('weapons:server:getAmmoCount', function(ammoCount)
                if ammoCount == 0 then QBCore.Functions.Notify(string.format(Lang:t('error.no_ammo'), QBCore.Shared.Items[ammoItem].label)) return end
                local _, clipAmmo = GetAmmoInClip(ped, weapon)
                local clipMax = GetMaxAmmoInClip(ped, weapon)

                if clipAmmo > clipMax then
                    SetAmmoInClip(ped, weapon, clipMax)
                    SetPedAmmo(ped, weapon, clipMax)
                    TaskReloadWeapon(ped)
                    TriggerServerEvent('weapons:server:UpdateWeaponAmmo', CurrentWeaponData, clipMax)
                    reloading = false
                    return
                end

                local ammoNeeded = clipMax - clipAmmo
                local reloadAmount = ammoNeeded < ammoCount and ammoNeeded or ammoCount
                local newAmmo = clipAmmo + reloadAmount
                if ammoNeeded <= 0 then QBCore.Functions.Notify(Lang:t('error.full_ammo')) return end

                LocalPlayer.state:set('inv_busy', true, true)
                QBCore.Functions.Progressbar('taking_bullets', string.format(Lang:t('info.reloading_bullets'), reloadAmount), Config.ReloadTime + (reloadAmount * 75), false, true, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function() -- Done
                    if weapon == GetSelectedPedWeapon(ped) then
                        if QBCore.Shared.Weapons[weapon] then
                            local item = {name = ammoItem, amount = reloadAmount}
                            QBCore.Functions.TriggerCallback('weapons:server:removeAmmo', function(canReload)
                                SetAmmoInClip(ped, weapon, newAmmo)
                                SetPedAmmo(ped, weapon, newAmmo)
                                TaskReloadWeapon(ped)
                                TriggerServerEvent('weapons:server:UpdateWeaponAmmo', CurrentWeaponData, newAmmo)
                                TriggerEvent('QBCore:Notify', Lang:t('success.reloaded'), 'success')
                            end, item)
                        end
                    else
                        TriggerEvent('QBCore:Notify', Lang:t('error.weapon_no_match'), 'error')
                    end
                    LocalPlayer.state:set('inv_busy', false, true)
                end, function()
                    QBCore.Functions.Notify(Lang:t('error.canceled'), 'error')
                    LocalPlayer.state:set('inv_busy', false, true)
                end)
            end, ammoItem)

            reloading = false
        end
    end
end

RegisterKeyMapping('sg_reload', 'Reload Weapon', 'keyboard', 'R')
RegisterCommand('sg_reload', function()
    ReloadWeapon()
end, false)

RegisterNetEvent('weapons:client:ReloadWeapon', function()
    ReloadWeapon()
end)

RegisterNetEvent('weapons:client:EquipAttachment', function(ItemData, attachment)
    local ped = PlayerPedId()
    local weapon = GetSelectedPedWeapon(ped)
    local WeaponData = QBCore.Shared.Weapons[weapon]
    if weapon ~= `WEAPON_UNARMED` then
        WeaponData.name = WeaponData.name:upper()
        if WeaponAttachments[WeaponData.name] then
            if WeaponAttachments[WeaponData.name][attachment]['item'] == ItemData.name then
                TriggerServerEvent('weapons:server:EquipAttachment', ItemData, CurrentWeaponData, WeaponAttachments[WeaponData.name][attachment])
            else
                QBCore.Functions.Notify(Lang:t('error.no_support_attachment'), 'error')
            end
        end
    else
        QBCore.Functions.Notify(Lang:t('error.no_weapon_in_hand'), 'error')
    end
end)

RegisterNetEvent('weapon:startRepair', function(data)
    if CurrentWeaponData and next(CurrentWeaponData) then
        local WeaponData = QBCore.Shared.Weapons[GetHashKey(CurrentWeaponData.name)]
        local WeaponClass = (QBCore.Shared.SplitStr(WeaponData.ammotype, '_')[2]):lower()
        TriggerEvent('QBCore:Notify', Lang:t('info.repair_weapon_price', { value = Config.RepairPoints[data.id].repairCosts[WeaponClass].cost}), 'primary', 1500)
        QBCore.Functions.TriggerCallback('weapons:server:RepairWeapon', function(HasMoney)
            if HasMoney then
                TriggerEvent('QBCore:Notify', Lang:t('info.weapon_repair_started'), 'success', 1500)
                CurrentWeaponData = {}
            else
                TriggerEvent('QBCore:Notify', Lang:t('info.not_enough_cash'), 'error', 1500)
            end
        end, data.id, CurrentWeaponData)
    else
        if Config.RepairPoints[data.id].RepairingData.CitizenId == nil then
            TriggerEvent('QBCore:Notify', Lang:t('error.no_weapon_in_hand'), 'error', 1500)
        end
    end
end)

RegisterNetEvent('weapon:completeRepair', function(data)
    if CurrentWeaponData and next(CurrentWeaponData) then
        if Config.RepairPoints[data.id].RepairingData.CitizenId ~= PlayerData.citizenid then
            TriggerEvent('QBCore:Notify', Lang:t('info.repairshop_not_usable'), 'error', 1500)
        else
            TriggerEvent('QBCore:Notify', Lang:t('info.take_weapon_back'), 'success', 1500)
            TriggerServerEvent('weapons:server:TakeBackWeapon', data.id, data)
        end
    else
        if Config.RepairPoints[data.id].RepairingData.CitizenId == PlayerData.citizenid then
            TriggerEvent('QBCore:Notify', Lang:t('info.take_weapon_back'), 'success', 1500)
            TriggerServerEvent('weapons:server:TakeBackWeapon', data.id, data)
        end
        if Config.RepairPoints[data.id].RepairingData.CitizenId == nil then
            TriggerEvent('QBCore:Notify', Lang:t('info.take_weapon_nil'), 'success', 1500)
            TriggerServerEvent('weapons:server:TakeBackWeapon', data.id, data)
        end
    end
end)

-------------------------------- THREADS --------------------------------

CreateThread(function()
    SetWeaponsNoAutoswap(true)
end)

CreateThread(function()
    while true do
        if LocalPlayer.state.isLoggedIn then
            local ped = PlayerPedId()
            if CurrentWeaponData and next(CurrentWeaponData) then
                if IsPedShooting(ped) or IsControlJustPressed(0, 24) then
                    local weapon = GetSelectedPedWeapon(ped)
                    if CanShoot then
                        if weapon and weapon ~= 0 and QBCore.Shared.Weapons[weapon] then
                            QBCore.Functions.TriggerCallback('prison:server:checkThrowable', function(result)
                                if result or GetAmmoInPedWeapon(ped, weapon) <= 0 then return end
                                MultiplierAmount += 1
                            end, weapon)
                            Wait(200)
                        end
                    else
                        if weapon ~= `WEAPON_UNARMED` then
                            TriggerEvent('inventory:client:CheckWeapon', QBCore.Shared.Weapons[weapon]['name'])
                            QBCore.Functions.Notify(Lang:t('error.weapon_broken'), 'error')
                            MultiplierAmount = 0
                        end
                    end
                end
            end
        end
        Wait(0)
    end
end)

CreateThread(function()
    for k, v in pairs (Config.RepairPoints) do
        local opt = {}
        if v.type == 'public' then
            opt = {
                {
                    type = 'client',
                    event = 'weapon:startRepair',
                    label = 'Start Weapon Repair',
                    id = k,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing or Config.RepairPoints[k].RepairingData.Ready then
                            return false
                        else
                            return true
                        end
                    end,
                },
                {
                    type = 'server',
                    event = 'weapon:repairTime',
                    label = 'Check Repair Time',
                    id = k,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing then
                            return true
                        else
                            return false
                        end
                    end,
                },
                {
                    type = 'client',
                    event = 'weapon:completeRepair',
                    label = 'Collect Weapon',
                    id = k,
                    canInteract = function()
                        if Config.RepairPoints[k].RepairingData.Ready then
                            return true
                        else
                            return false
                        end
                    end,
                }
            }
        elseif v.type == 'private' then
            local temp = v.citizenids
            opt = {
                {
                    type = 'client',
                    event = 'weapon:startRepair',
                    label = 'Start Weapon Repair',
                    id = k,
                    citizenid = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing or Config.RepairPoints[k].RepairingData.Ready then
                            return false
                        else
                            return true
                        end
                    end,
                },
                {
                    type = 'server',
                    event = 'weapon:repairTime',
                    label = 'Check Repair Time',
                    id = k,
                    citizenid = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing then
                            return true
                        else
                            return false
                        end
                    end,
                },
                {
                    type = 'client',
                    event = 'weapon:completeRepair',
                    label = 'Collect Weapon',
                    id = k,
                    citizenid = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].RepairingData.Ready then
                            return true
                        else
                            return false
                        end
                    end,
                }
            }
        elseif v.type == 'job' then
            local temp = v.jobs
            opt = {
                {
                    type = 'client',
                    event = 'weapon:startRepair',
                    label = 'Start Weapon Repair',
                    id = k,
                    job = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing or Config.RepairPoints[k].RepairingData.Ready then
                            return false
                        else
                            return true
                        end
                    end,
                },
                {
                    type = 'server',
                    event = 'weapon:repairTime',
                    label = 'Check Repair Time',
                    id = k,
                    job = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing then
                            return true
                        else
                            return false
                        end
                    end,
                },
                {
                    type = 'client',
                    event = 'weapon:completeRepair',
                    label = 'Collect Weapon',
                    id = k,
                    job = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].RepairingData.Ready then
                            return true
                        else
                            return false
                        end
                    end,
                }
            }
        elseif v.type == 'gang' then
            local temp = v.gangs
            opt = {
                {
                    type = 'client',
                    event = 'weapon:startRepair',
                    label = 'Start Weapon Repair',
                    id = k,
                    gang = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing or Config.RepairPoints[k].RepairingData.Ready then
                            return false
                        else
                            return true
                        end
                    end,
                },
                {
                    type = 'server',
                    event = 'weapon:repairTime',
                    label = 'Check Repair Time',
                    id = k,
                    gang = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].IsRepairing then
                            return true
                        else
                            return false
                        end
                    end,
                },
                {
                    type = 'client',
                    event = 'weapon:completeRepair',
                    label = 'Collect Weapon',
                    id = k,
                    gang = temp,
                    canInteract = function()
                        if Config.RepairPoints[k].RepairingData.Ready then
                            return true
                        else
                            return false
                        end
                    end,
                }
            }
        end
        exports['qb-target']:AddBoxZone('weaponrepair'..k, vector3(v.coords.x, v.coords.y, v.coords.z), 1.25, 1.5, {
            name = 'weaponrepair'..k,
            heading = v.coords.w,
            debugPoly = v.debug,
            minZ = v.coords.z-0.5,
            maxZ = v.coords.z+0.5,
        },{
            options = opt,
            distance = 2.5,
        })
    end
end)

CreateThread(function()
    if not Config.PeristentFlashlight then return end
    while true do
        local FlashLight = IsFlashLightOn(PlayerPedId())
        if FlashLight then
            SetFlashLightKeepOnWhileMoving(true)
        end
        Wait(250)
    end
end)