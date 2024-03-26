Config = Config or {}

Config.Debug = false

Config.ReloadTime = math.random(2000, 3000)

Config.JamChance = 1000 -- 1/1000 chance of jamming per bullet fired

Config.AttachmentDurability = true -- If you want to disable durability for attachments, set this to false.
-- If an error occurs with attachments, more than likey you have an attachment or weapon that is not in the list below. --
-- Add the weapon or attachment to the list below and set the value to whatever you want. --
Config.PeristentFlashlight = true

Config.DurabilityBlockedWeapons = {
    'weapon_stungun',
    'weapon_nightstick',
    'weapon_flashlight',
    'weapon_unarmed',
}

Config.AmmoItems = {
    ['AMMO_PISTOL']         = 'pistol_ammo',
    ['AMMO_RIFLE']          = 'rifle_ammo',
    ['AMMO_SMG']            = 'smg_ammo',
    ['AMMO_SHOTGUN']        = 'shotgun_ammo',
    ['AMMO_MG']             = 'mg_ammo',
    ['AMMO_SNIPER']         = 'sniper_ammo',
    ['AMMO_HUNTING']        = 'hunting_ammo',
    ['AMMO_EMPLAUNCHER']    = 'emp_ammo',
}

Config.AmmoBoxes = {
    pistol_ammo_box     = { item = 'pistol_ammo',   amount = 50 },
    rifle_ammo_box      = { item = 'rifle_ammo',    amount = 75 },
    smg_ammo_box        = { item = 'smg_ammo',      amount = 50 },
    shotgun_ammo_box    = { item = 'shotgun_ammo',  amount = 20 },
    mg_ammo_box         = { item = 'mg_ammo',       amount = 100 },
    sniper_ammo_box     = { item = 'sniper_ammo',   amount = 10 },
    hunting_ammo_box    = { item = 'hunting_ammo',  amount = 30 },
}

Config.WeaponData = {
	-- Melee
	weapon_unarmed 			        = { durability = 0.00, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_dagger 				    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_bat 				 	    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_bottle 				    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_crowbar 				    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_flashlight 		        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_golfclub 			    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_hammer 				    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_hatchet 				    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_knuckle 				    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_knife 				    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_machete 				    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_switchblade 			    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_nightstick 		        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_wrench 				    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_battleaxe 			    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_poolcue 				    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_briefcase 			    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_briefcase_02 		    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_garbagebag 			    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_handcuffs 			    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_bread 				    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_stone_hatchet 		    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },

	-- Handguns
	weapon_pistol 				    = { durability = 0.15, modifier = 0.65, recoil = 0.2, shake = 0.025 }, --ammunation -x
	weapon_pistol_mk2 			    = { durability = 0.15, modifier = 0.65, recoil = 0.2, shake = 0.025 }, --x
	weapon_combatpistol 		    = { durability = 0.15, modifier = 0.65, recoil = 0.2, shake = 0.025 },  --x
	weapon_appistol 			    = { durability = 0.15, modifier = 0.1,  recoil = 0.2, shake = 0.025 }, --blacklisted dont worry about this
	--weapon_stungun 			        = { durability = 0.15, modifier = 0.1,  recoil = 0.2, shake = 0.025 }, --broken (kinda... there is another script handling it)
    --weapon_stungun_mp 		        = { durability = 0.15, modifier = 0.2,  recoil = 0.2, shake = 0.025 }, --does not exist
	weapon_pistol50 			    = { durability = 0.15, modifier = 0.10, recoil = 0.2, shake = 0.025 },
	weapon_snspistol 			    = { durability = 0.15, modifier = 0.55, recoil = 0.2, shake = 0.025 },  --ammunation
	weapon_heavypistol 			    = { durability = 0.15, modifier = 0.8,  recoil = 0.2, shake = 0.025 },
	weapon_vintagepistol 		    = { durability = 0.15, modifier = 0.3,  recoil = 0.2, shake = 0.025 },
	weapon_flaregun 			    = { durability = 0.15, modifier = 0.1,  recoil = 0.2, shake = 0.025 }, --x
	weapon_marksmanpistol 		    = { durability = 0.15, modifier = 0.17, recoil = 0.2, shake = 0.025 },--x
	weapon_revolver 			    = { durability = 0.15, modifier = 0.50, recoil = 0.2, shake = 0.025 },--x
	weapon_revolver_mk2 		    = { durability = 0.15, modifier = 0.14, recoil = 0.2, shake = 0.025 }, --x
	weapon_doubleaction 		    = { durability = 0.15, modifier = 0.19, recoil = 0.2, shake = 0.025 }, --x
	weapon_snspistol_mk2 		    = { durability = 0.15, modifier = 0.15, recoil = 0.2, shake = 0.025 }, --ammunation --x
	weapon_raypistol 			    = { durability = 0.15, modifier = 0.1,  recoil = 0.2, shake = 0.025 }, --blacklisted
	weapon_ceramicpistol 		    = { durability = 0.15, modifier = 0.65, recoil = 0.2, shake = 0.025 }, --ammunation -x
	weapon_navyrevolver 		    = { durability = 0.15, modifier = 0.18, recoil = 0.2, shake = 0.025 }, --x
	weapon_gadgetpistol 		    = { durability = 0.15, modifier = 0.1,  recoil = 0.2, shake = 0.025 }, --blacklisted
	weapon_pistolxm3		        = { durability = 0.15, modifier = 0.65, recoil = 0.2, shake = 0.025 }, --ammunation (best) --x

	-- Submachine Guns
	weapon_microsmg 			    = { durability = 0.15, modifier = 0.6, recoil = 0.2, shake = 0.025 },
	weapon_smg 				        = { durability = 0.15, modifier = 0.6, recoil = 0.2, shake = 0.025 },
	weapon_smg_mk2 				    = { durability = 0.15, modifier = 0.6, recoil = 0.2, shake = 0.025 },
	weapon_assaultsmg 			    = { durability = 0.15, modifier = 0.65, recoil = 0.2, shake = 0.025 },
	weapon_combatpdw 			    = { durability = 0.15, modifier = 0.65, recoil = 0.2, shake = 0.025 },
	weapon_machinepistol 		    = { durability = 0.15, modifier = 0.6, recoil = 0.2, shake = 0.025 }, --tec9
	weapon_minismg 				    = { durability = 0.15, modifier = 0.6, recoil = 0.2, shake = 0.025 }, --
	weapon_raycarbine 			    = { durability = 0.15, modifier = 0.6, recoil = 0.2, shake = 0.025 }, -- blacklisted

	-- Shotguns
	weapon_pumpshotgun 			    = { durability = 0.15, modifier = 0.3, recoil = 0.2, shake = 0.025 }, --x
	weapon_sawnoffshotgun 		    = { durability = 0.15, modifier = 0.3, recoil = 0.2, shake = 0.025 }, --x
	weapon_assaultshotgun 		    = { durability = 0.15, modifier = 0.2, recoil = 0.2, shake = 0.025 }, --x
	weapon_bullpupshotgun 		    = { durability = 0.15, modifier = 0.6, recoil = 0.2, shake = 0.025 }, --x
	weapon_musket 				    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 }, --x
	weapon_heavyshotgun 		    = { durability = 0.15, modifier = 0.4, recoil = 0.2, shake = 0.025 }, --x
	weapon_dbshotgun 			    = { durability = 0.15, modifier = 0.2, recoil = 0.2, shake = 0.025 }, --x
	weapon_autoshotgun 			    = { durability = 0.15, modifier = 0.3, recoil = 0.2, shake = 0.025 }, --x
	weapon_pumpshotgun_mk2 		    = { durability = 0.15, modifier = 0.2, recoil = 0.2, shake = 0.025 }, --x
	weapon_combatshotgun 		    = { durability = 0.15, modifier = 0.5, recoil = 0.2, shake = 0.025 }, --x

	-- Assault Rifles
	weapon_assaultrifle 		    = { durability = 0.15, modifier = 0.15, recoil = 0.2, shake = 0.025 },
	weapon_assaultrifle_mk2 	    = { durability = 0.15, modifier = 0.15, recoil = 0.2, shake = 0.025 },
	weapon_carbinerifle 		    = { durability = 0.15, modifier = 0.15, recoil = 0.2, shake = 0.025 },
	weapon_carbinerifle_mk2 	    = { durability = 0.15, modifier = 0.15, recoil = 0.2, shake = 0.025 },
	weapon_advancedrifle 		    = { durability = 0.15, modifier = 0.15, recoil = 0.2, shake = 0.025 },
	weapon_specialcarbine 		    = { durability = 0.15, modifier = 0.15, recoil = 0.2, shake = 0.025 },
	weapon_bullpuprifle 		    = { durability = 0.15, modifier = 0.15, recoil = 0.2, shake = 0.025 },
	weapon_compactrifle 		    = { durability = 0.15, modifier = 0.15, recoil = 0.2, shake = 0.025 },
	weapon_specialcarbine_mk2 	    = { durability = 0.15, modifier = 0.15, recoil = 0.2, shake = 0.025 },
	weapon_bullpuprifle_mk2 	    = { durability = 0.15, modifier = 0.15, recoil = 0.2, shake = 0.025 },
	weapon_militaryrifle 		    = { durability = 0.15, modifier = 0.15, recoil = 0.2, shake = 0.025 },
    weapon_heavyrifle               = { durability = 0.15, modifier = 0.15, recoil = 0.2, shake = 0.025 },

	-- Light Machine Guns
	weapon_mg 				        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_combatmg 			    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_gusenberg 			    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_combatmg_mk2 		    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },

	-- Sniper Rifles
	weapon_sniperrifle 			    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_heavysniper 			    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_marksmanrifle 		    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_remotesniper 		    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_heavysniper_mk2 		    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
	weapon_marksmanrifle_mk2 	    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },

	-- Heavy Weapons
	weapon_rpg 				        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 }, --blacklisted
	weapon_grenadelauncher 		    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 }, --blacklisted
	weapon_grenadelauncher_smoke    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 }, --blacklisted
    weapon_emplauncher              = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 }, --blacklisted
	weapon_minigun 				    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 }, --blacklisted
	weapon_firework 			    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 }, --blacklisted
	weapon_railgun 				    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 }, --blacklisted
	weapon_hominglauncher 		    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 }, --blacklisted
	weapon_compactlauncher 		    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 }, --blacklisted
	weapon_rayminigun 			    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 }, --blacklisted

    -- Custom Weapons
    weapon_ak47 			        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_de 	                    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_fnx45 			        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_glock17 		            = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_m4 			            = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_hk416 			        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_mk14 			        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_m110 			        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_huntingrifle 	        = { durability = 0.20, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_ar15 			        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_m9 	                    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_m70 			            = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_m1911 		            = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_mac10 			        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_uzi 	                    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_mp9 	                    = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_mossberg 		        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_remington 		        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_scarh 			        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_shiv 	                = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_katana 	                = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_sledgehammer 	        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_mp5 			            = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_glock18c 		        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_glock22 			        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_aks74 			        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_ak74 			        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_ak74 			        = { durability = 0.15, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_perforator 		        = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_bluebfknife 			    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_bfknife 				    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_chbfknife 			    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_crimsonbfknife 		    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_fadebfknife 			    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_flipknife 			    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_forestbfknife 		    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_gutknife 			    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_huntsmanknife 		    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_karambitknife 		    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_safaribfknife 		    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_scorchedbfknife 		    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_slaughterbfknife 	    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_stainedrbfknife 		    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },
    weapon_urbanrbfknife 		    = { durability = 0.05, modifier = 0.1, recoil = 0.2, shake = 0.025 },

	-- Throwables
	weapon_grenade 				    = { durability = 0.15 },
	weapon_bzgas 				    = { durability = 0.15 },
	weapon_molotov 				    = { durability = 0.15 },
	weapon_stickybomb 			    = { durability = 0.15 },
	weapon_proxmine 			    = { durability = 0.15 },
	weapon_snowball 			    = { durability = 0.15 },
	weapon_pipebomb 			    = { durability = 0.15 },
	weapon_ball 				    = { durability = 0.15 },
	weapon_smokegrenade 		    = { durability = 0.15 },
	weapon_flare 				    = { durability = 0.15 },

	-- Miscellaneous
	weapon_petrolcan 			    = { durability = 0.15 },
	weapon_fireextinguisher 	    = { durability = 0.15 },
	weapon_hazardcan 			    = { durability = 0.15 },
    weapon_fertilizercan 		    = { durability = 0.15 },

    -- Attachments
    pistol_defaultclip              = { durability = 0.15 },
    pistol_extendedclip             = { durability = 0.15 },
    pistol_flashlight               = { durability = 0.15 },
    pistol_suppressor               = { durability = 0.15 },
    pistol_luxuryfinish             = { durability = 0.15 },
    combatpistol_defaultclip        = { durability = 0.15 },
    combatpistol_extendedclip       = { durability = 0.15 },
    combatpistol_luxuryfinish       = { durability = 0.15 },
    appistol_defaultclip            = { durability = 0.15 },
    appistol_extendedclip           = { durability = 0.15 },
    appistol_luxuryfinish           = { durability = 0.15 },
    pistol50_defaultclip            = { durability = 0.15 },
    pistol50_extendedclip           = { durability = 0.15 },
    pistol50_luxuryfinish           = { durability = 0.15 },
    revolver_defaultclip            = { durability = 0.15 },
    revolver_vipvariant             = { durability = 0.15 },
    revolver_bodyguardvariant       = { durability = 0.15 },
    snspistol_defaultclip           = { durability = 0.15 },
    snspistol_extendedclip          = { durability = 0.15 },
    snspistol_grip                  = { durability = 0.15 },
    heavypistol_defaultclip         = { durability = 0.15 },
    heavypistol_extendedclip        = { durability = 0.15 },
    heavypistol_grip                = { durability = 0.15 },
    vintagepistol_defaultclip       = { durability = 0.15 },
    vintagepistol_extendedclip      = { durability = 0.15 },

    microsmg_defaultclip            = { durability = 0.15 },
    microsmg_extendedclip           = { durability = 0.15 },
    microsmg_scope                  = { durability = 0.15 },
    microsmg_luxuryfinish           = { durability = 0.15 },
    smg_defaultclip                 = { durability = 0.15 },
    smg_extendedclip                = { durability = 0.15 },
    smg_suppressor                  = { durability = 0.15 },
    smg_drum                        = { durability = 0.15 },
    smg_scope                       = { durability = 0.15 },
    smg_luxuryfinish                = { durability = 0.15 },
    assaultsmg_defaultclip          = { durability = 0.15 },
    assaultsmg_extendedclip         = { durability = 0.15 },
    assaultsmg_luxuryfinish         = { durability = 0.15 },
    minismg_defaultclip             = { durability = 0.15 },
    minismg_extendedclip            = { durability = 0.15 },
    machinepistol_defaultclip       = { durability = 0.15 },
    machinepistol_extendedclip      = { durability = 0.15 },
    machinepistol_drum              = { durability = 0.15 },
    combatpdw_defaultclip           = { durability = 0.15 },
    combatpdw_extendedclip          = { durability = 0.15 },
    combatpdw_drum                  = { durability = 0.15 },
    combatpdw_grip                  = { durability = 0.15 },
    combatpdw_scope                 = { durability = 0.15 },

    shotgun_suppressor              = { durability = 0.15 },
    pumpshotgun_luxuryfinish        = { durability = 0.15 },
    sawnoffshotgun_luxuryfinish     = { durability = 0.15 },
    assaultshotgun_defaultclip      = { durability = 0.15 },
    assaultshotgun_extendedclip     = { durability = 0.15 },
    heavyshotgun_defaultclip        = { durability = 0.15 },
    heavyshotgun_extendedclip       = { durability = 0.15 },
    heavyshotgun_drum               = { durability = 0.15 },

    assaultrifle_defaultclip        = { durability = 0.15 },
    assaultrifle_extendedclip       = { durability = 0.15 },
    assaultrifle_drum               = { durability = 0.15 },
    rifle_flashlight                = { durability = 0.15 },
    rifle_grip                      = { durability = 0.15 },
    rifle_suppressor                = { durability = 0.15 },
    assaultrifle_luxuryfinish       = { durability = 0.15 },
    carbinerifle_defaultclip        = { durability = 0.15 },
    carbinerifle_extendedclip       = { durability = 0.15 },
    carbinerifle_drum               = { durability = 0.15 },
    carbinerifle_scope              = { durability = 0.15 },
    carbinerifle_luxuryfinish       = { durability = 0.15 },
    advancedrifle_defaultclip       = { durability = 0.15 },
    advancedrifle_extendedclip      = { durability = 0.15 },
    advancedrifle_luxuryfinish      = { durability = 0.15 },
    specialcarbine_defaultclip      = { durability = 0.15 },
    specialcarbine_extendedclip     = { durability = 0.15 },
    specialcarbine_drum             = { durability = 0.15 },
    specialcarbine_luxuryfinish     = { durability = 0.15 },
    bullpuprifle_defaultclip        = { durability = 0.15 },
    bullpuprifle_extendedclip       = { durability = 0.15 },
    bullpuprifle_luxuryfinish       = { durability = 0.15 },
    compactrifle_defaultclip        = { durability = 0.15 },
    compactrifle_extendedclip       = { durability = 0.15 },
    compactrifle_drum               = { durability = 0.15 },
    gusenberg_defaultclip           = { durability = 0.15 },
    gusenberg_extendedclip          = { durability = 0.15 },

    sniperrifle_defaultclip         = { durability = 0.15 },
    sniper_scope                    = { durability = 0.15 },
    snipermax_scope                 = { durability = 0.15 },
    sniper_grip                     = { durability = 0.15 },
    heavysniper_defaultclip         = { durability = 0.15 },
    marksmanrifle_defaultclip       = { durability = 0.15 },
    marksmanrifle_extendedclip      = { durability = 0.15 },
    marksmanrifle_scope             = { durability = 0.15 },
    marksmanrifle_luxuryfinish      = { durability = 0.15 },
}

Config.Throwables = {
    'weapon_ball',
    'weapon_bzgas',
    'weapon_flare',
    'weapon_grenade',
    'weapon_molotov',
    'weapon_pipebomb',
    'weapon_proxmine',
    'weapon_smokegrenade',
    'weapon_snowball',
    'weapon_stickybomb',
    'weapon_stungrenade',
}

Config.RepairPoints = {
    [1] = {
        coords = vector4(11.17, -1098.84, 29.8, 156.87),
        type = 'public', --public, job, gang, private
        --jobs = { ['police'] = 0 },
        --gangs = { ['ammu'] = 0, ['rrmc'] = 0 },
        --citizenids = {['JFD98238'] = true, ['HJS29340'] = true},
        repairCosts = {
            ['pistol'] =    {cost = 2000, time = math.random(1,5)},
            ['smg'] =       {cost = 4000, time = math.random(1,5)},
            ['mg'] =        {cost = 6000, time = math.random(1,5)},
            ['shotgun'] =   {cost = 6000, time = math.random(1,5)},
            ['rifle'] =     {cost = 5000, time = math.random(1,5)},
            ['sniper'] =    {cost = 7000, time = math.random(1,5)},
        },
        tableTimeout = 10, -- Set to false if you don't want to use the table timeout. Time is in minutes
        IsRepairing = false,
        RepairingData = {},
        debug = false
    },
    [2] = {
        coords = vector4(14.13, -1099.94, 29.8, 160.38),
        type = 'public', --public, job, gang, private
        --jobs = { ['police'] = 0 },
        --gangs = { ['ammu'] = 0, ['rrmc'] = 0 },
        --citizenids = {['JFD98238'] = true, ['HJS29340'] = true},
        repairCosts = {
            ['pistol'] =    {cost = 2000, time = math.random(1,5)},
            ['smg'] =       {cost = 4000, time = math.random(1,5)},
            ['mg'] =        {cost = 6000, time = math.random(1,5)},
            ['shotgun'] =   {cost = 6000, time = math.random(1,5)},
            ['rifle'] =     {cost = 5000, time = math.random(1,5)},
            ['sniper'] =    {cost = 7000, time = math.random(1,5)},
        },
        tableTimeout = 10, -- Set to false if you don't want to use the table timeout. Time is in minutes
        IsRepairing = false,
        RepairingData = {},
        debug = false
    },
    [3] = {
        coords = vector4(17.15, -1101.04, 29.8, 159.48),
        type = 'public', --public, job, gang, private
        --jobs = { ['police'] = 0 },
        --gangs = { ['ammu'] = 0, ['rrmc'] = 0 },
        --citizenids = {['JFD98238'] = true, ['HJS29340'] = true},
        repairCosts = {
            ['pistol'] =    {cost = 2000, time = math.random(1,5)},
            ['smg'] =       {cost = 4000, time = math.random(1,5)},
            ['mg'] =        {cost = 6000, time = math.random(1,5)},
            ['shotgun'] =   {cost = 6000, time = math.random(1,5)},
            ['rifle'] =     {cost = 5000, time = math.random(1,5)},
            ['sniper'] =    {cost = 7000, time = math.random(1,5)},
        },
        tableTimeout = 10, -- Set to false if you don't want to use the table timeout. Time is in minutes
        IsRepairing = false,
        RepairingData = {},
        debug = false
    },
}

WeaponAttachments = {
    -- PISTOLS
    ['WEAPON_PISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PISTOL_VARMOD_LUXE',
            item = 'pistol_luxuryfinish',
        },
    },
    ['WEAPON_GLOCK17'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_GLOCK17_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_GLOCK17_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_M9'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_M9_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_M9_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_M1911'] = {
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_DE'] = {
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_FNX45'] = {
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_COMBATPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_01',
            item = 'combatpistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_02',
            item = 'combatpistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER',
            item = 'combatpistol_luxuryfinish',
        },
    },
    ['WEAPON_APPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_APPISTOL_CLIP_01',
            item = 'appistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_APPISTOL_CLIP_02',
            item = 'appistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_APPISTOL_VARMOD_LUXE',
            item = 'appistol_luxuryfinish',
        },
    },
    ['WEAPON_PISTOL50'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL50_CLIP_01',
            item = 'pistol50_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_PISTOL50_CLIP_02',
            item = 'pistol50_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PISTOL50_VARMOD_LUXE',
            item = 'pistol50_luxuryfinish',
        },
    },
    ['WEAPON_REVOLVER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_REVOLVER_CLIP_01',
            item = 'revolver_defaultclip',
        },
        ['vipvariant'] = {
            component = 'COMPONENT_REVOLVER_VARMOD_GOON',
            item = 'revolver_vipvariant',
            type = 'skin',
        },
        ['bodyguardvariant'] = {
            component = 'COMPONENT_REVOLVER_VARMOD_BOSS',
            item = 'revolver_bodyguardvariant',
            type = 'skin',
        },
    },
    ['WEAPON_SNSPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SNSPISTOL_CLIP_01',
            item = 'snspistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SNSPISTOL_CLIP_02',
            item = 'snspistol_extendedclip',
            type = 'clip',
        },
        ['grip'] = {
            component = 'COMPONENT_SNSPISTOL_VARMOD_LOWRIDER',
            item = 'snspistol_grip',
        },
    },
    ['WEAPON_HEAVYPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYPISTOL_CLIP_01',
            item = 'heavypistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYPISTOL_CLIP_02',
            item = 'heavypistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_HEAVYPISTOL_VARMOD_LUXE',
            item = 'heavypistol_grip',
        },
    },
    ['WEAPON_VINTAGEPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_VINTAGEPISTOL_CLIP_01',
            item = 'vintagepistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_VINTAGEPISTOL_CLIP_02',
            item = 'vintagepistol_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
            type = 'silencer',
        },
    },
    -- SMG'S
    ['WEAPON_MICROSMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_01',
            item = 'microsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_02',
            item = 'microsmg_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_MICROSMG_VARMOD_LUXE',
            item = 'microsmg_luxuryfinish',
        },
    },
    ['WEAPON_SMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SMG_CLIP_01',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SMG_CLIP_02',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_SMG_CLIP_03',
            item = 'smg_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO_02',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_SMG_VARMOD_LUXE',
            item = 'smg_luxuryfinish',
        },
    },
    ['WEAPON_ASSAULTSMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTSMG_CLIP_01',
            item = 'assaultsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTSMG_CLIP_02',
            item = 'assaultsmg_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER',
            item = 'assaultsmg_luxuryfinish',
        },
    },
    ['WEAPON_MINISMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MINISMG_CLIP_01',
            item = 'minismg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MINISMG_CLIP_02',
            item = 'minismg_extendedclip',
            type = 'clip',
        },
    },
    ['WEAPON_MACHINEPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_01',
            item = 'machinepistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_02',
            item = 'machinepistol_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_03',
            item = 'machinepistol_drum',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_COMBATPDW'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_01',
            item = 'combatpdw_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_02',
            item = 'combatpdw_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_03',
            item = 'combatpdw_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'combatpdw_grip',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
    },
    ['WEAPON_MP9'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MP9_CLIP_01',
            item = 'microsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MP9_CLIP_02',
            item = 'microsmg_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'pistol_suppressor',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
    },
    ['WEAPON_UZI'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_01',
            item = 'microsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_02',
            item = 'microsmg_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_MAC10'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_01',
            item = 'microsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_02',
            item = 'microsmg_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'pistol_suppressor',
        },
    },
    -- SHOTGUNS
    ['WEAPON_PUMPSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_SR_SUPP',
            item = 'shotgun_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER',
            item = 'pumpshotgun_luxuryfinish',
        },
    },
    ['WEAPON_SAWNOFFSHOTGUN'] = {
        ['luxuryfinish'] = {
            component = 'COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE',
            item = 'sawnoffshotgun_luxuryfinish',
        },
    },
    ['WEAPON_ASSAULTSHOTGUN'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTSHOTGUN_CLIP_01',
            item = 'assaultshotgun_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTSHOTGUN_CLIP_02',
            item = 'assaultshotgun_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_BULLPUPSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_HEAVYSHOTGUN'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_01',
            item = 'heavyshotgun_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_02',
            item = 'heavyshotgun_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_03',
            item = 'heavyshotgun_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_COMBATSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
    },
    -- RIFLES
    ['WEAPON_ASSAULTRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_02',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_03',
            item = 'assaultrifle_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ASSAULTRIFLE_VARMOD_LUXE',
            item = 'assaultrifle_luxuryfinish',
        },
    },
    ['WEAPON_CARBINERIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_01',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_02',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_03',
            item = 'carbinerifle_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_CARBINERIFLE_VARMOD_LUXE',
            item = 'carbinerifle_luxuryfinish',
        },
    },
    ['WEAPON_ADVANCEDRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_CLIP_01',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_CLIP_02',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE',
            item = 'advancedrifle_luxuryfinish',
        },
    },
    ['WEAPON_SPECIALCARBINE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_01',
            item = 'specialcarbine_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_02',
            item = 'specialcarbine_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_03',
            item = 'specialcarbine_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER',
            item = 'specialcarbine_luxuryfinish',
        },
    },
    ['WEAPON_BULLPUPRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_BULLPUPRIFLE_CLIP_01',
            item = 'bullpuprifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_BULLPUPRIFLE_CLIP_02',
            item = 'bullpuprifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_BULLPUPRIFLE_VARMOD_LOW',
            item = 'bullpuprifle_luxuryfinish',
        },
    },
    ['WEAPON_COMPACTRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_01',
            item = 'compactrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_02',
            item = 'compactrifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_03',
            item = 'compactrifle_drum',
            type = 'clip',
        },
    },
    ['WEAPON_HEAVYRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYRIFLE_CLIP_01',
            item = 'bullpuprifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYRIFLE_CLIP_02',
            item = 'bullpuprifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_BULLPUPRIFLE_VARMOD_LOW',
            item = 'bullpuprifle_luxuryfinish',
        },
    },
    ['WEAPON_AK47'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_AK47_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_AK47_CLIP_02',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'rifle_suppressor',
        },
    },
    ['WEAPON_M70'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_M70_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'rifle_suppressor',
        },
    },
    ['WEAPON_M110'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_M110_CLIP_01',
            item = 'marksmanrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_M110_CLIP_02',
            item = 'marksmanrifle_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
    },
    ['WEAPON_HK416'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HK416_CLIP_01',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HK416_CLIP_02',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
    },
    -- MACHINE GUNS
    ['WEAPON_GUSENBERG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_GUSENBERG_CLIP_01',
            item = 'gusenberg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_GUSENBERG_CLIP_02',
            item = 'gusenberg_extendedclip',
            type = 'clip',
        },
    },
    -- LAUNCHERS
    ['WEAPON_EMPLAUNCHER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_EMPLAUNCHER_CLIP_01',
            item = 'emplauncher_defaultclip',
            type = 'clip',
        },
    },
    -- SNIPERS
    ['WEAPON_SNIPERRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SNIPERRIFLE_CLIP_01',
            item = 'sniperrifle_defaultclip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE',
            item = 'sniper_scope',
            type = 'scope',
        },
        ['advancedscope'] = {
            component = 'COMPONENT_AT_SCOPE_MAX',
            item = 'snipermax_scope',
            type = 'scope',
        },
        ['grip'] = {
            component = 'COMPONENT_SNIPERRIFLE_VARMOD_LUXE',
            item = 'sniper_grip',
        },
    },
    ['WEAPON_HEAVYSNIPER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYSNIPER_CLIP_01',
            item = 'heavysniper_defaultclip',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE',
            item = 'sniper_scope',
            type = 'scope',
        },
        ['advancedscope'] = {
            component = 'COMPONENT_AT_SCOPE_MAX',
            item = 'snipermax_scope',
            type = 'scope',
        },
    },
    ['WEAPON_MARKSMANRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MARKSMANRIFLE_CLIP_01',
            item = 'marksmanrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MARKSMANRIFLE_CLIP_02',
            item = 'marksmanrifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM',
            item = 'marksmanrifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_MARKSMANRIFLE_VARMOD_LUXE',
            item = 'marksmanrifle_luxuryfinish',
        },
    },
}
