/decl/hierarchy/outfit/job/security
	hierarchy_type = /decl/hierarchy/outfit/job/security
	l_ear = /obj/item/device/radio/headset/headset_sec
	gloves = /obj/item/clothing/gloves/thick
	shoes = /obj/item/clothing/shoes/jackboots
	id_type = /obj/item/weapon/card/id/sec
	pda_type = /obj/item/modular_computer/pda/security
	backpack_contents = list(/obj/item/weapon/handcuffs = 1)

/decl/hierarchy/outfit/job/security/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/security/swo
	name = OUTFIT_JOB_NAME("Marshal - Warrant Officer")
	l_ear = /obj/item/device/radio/headset/heads/hos
	uniform = /obj/item/clothing/under/rank/ih_commander
	suit = /obj/item/clothing/suit/armor/hos
	l_pocket = /obj/item/device/flash
	gloves = /obj/item/clothing/gloves/stungloves
	glasses = /obj/item/clothing/glasses/sechud/tactical
	belt = /obj/item/weapon/gun/projectile/lamia
	id_type = /obj/item/weapon/card/id/hos
	head = /obj/item/clothing/head/rank/commander
	pda_type = /obj/item/modular_computer/pda/heads/hos
	backpack_contents = list(/obj/item/weapon/handcuffs = 1,/obj/item/ammo_magazine/magnum/rubber = 1,/obj/item/device/lighting/toggleable/flashlight/seclite = 1, /obj/item/weapon/cell/small/high = 2, /obj/item/weapon/gun/energy/gun/martin = 1)

/decl/hierarchy/outfit/job/security/smc
	name = OUTFIT_JOB_NAME("Blackshield - Militia Commander")
	l_ear = /obj/item/device/radio/headset/heads/hos
	uniform = /obj/item/clothing/under/rank/commander
	suit = /obj/item/clothing/suit/armor/commander/militia
	l_pocket = /obj/item/device/flash
	gloves = /obj/item/clothing/gloves/stungloves
	glasses = /obj/item/clothing/glasses/ballistic
	belt = /obj/item/weapon/gun/projectile/lamia
	id_type = /obj/item/weapon/card/id/hos
	head = /obj/item/clothing/head/rank/milcom/beret
	pda_type = /obj/item/modular_computer/pda/heads/hos
	backpack_contents = list(/obj/item/weapon/handcuffs = 1,/obj/item/ammo_magazine/magnum = 2,/obj/item/device/lighting/toggleable/flashlight/seclite = 1, /obj/item/weapon/cell/small/high = 2, /obj/item/weapon/gun/energy/gun/martin = 1)


/decl/hierarchy/outfit/job/security/gunserg
	name = OUTFIT_JOB_NAME("Marshal - Supply Specialist")
	uniform = /obj/item/clothing/under/rank/warden
	suit = /obj/item/clothing/suit/armor/vest/ironhammer
	head = /obj/item/clothing/head/rank/warden/beret
	glasses = /obj/item/clothing/glasses/hud/security
	l_pocket = /obj/item/device/flash
	gloves = /obj/item/clothing/gloves/stungloves
	backpack_contents = list(/obj/item/weapon/handcuffs = 1, /obj/item/device/lighting/toggleable/flashlight/seclite = 1, /obj/item/weapon/cell/small/high = 2, /obj/item/weapon/gun/energy/gun/martin = 1)

/decl/hierarchy/outfit/job/security/inspector
	name = OUTFIT_JOB_NAME("Marshal - Ranger")
	head = /obj/item/clothing/head/rank/inspector
	uniform = /obj/item/clothing/under/rank/inspector
	suit = /obj/item/clothing/suit/storage/detective/ironhammer
	head = /obj/item/clothing/head/fedora/brown
	gloves = /obj/item/clothing/gloves/stungloves
	l_pocket = /obj/item/device/flash
	shoes = /obj/item/clothing/shoes/reinforced
	belt = /obj/item/weapon/gun/energy/gun/martin
	r_hand = /obj/item/weapon/storage/briefcase/crimekit
	id_type = /obj/item/weapon/card/id/det
	pda_type = /obj/item/modular_computer/pda/forensics
	backpack_contents = list(/obj/item/weapon/handcuffs = 1, /obj/item/ammo_magazine/slmagnum/rubber = 2, /obj/item/device/lighting/toggleable/flashlight/seclite = 1, /obj/item/weapon/cell/small/high = 2)

/decl/hierarchy/outfit/job/security/detective/New()
	..()
	backpack_overrides.Cut()

/decl/hierarchy/outfit/job/security/medspec
	name = OUTFIT_JOB_NAME("Blackshield - Corpsman")
	l_pocket = /obj/item/device/flash
	id_type = /obj/item/weapon/card/id/medcpec
	uniform = /obj/item/clothing/under/rank/corpsman
	head = /obj/item/clothing/head/rank/corpsman/beret
	pda_type = /obj/item/modular_computer/pda/forensics
	belt = /obj/item/weapon/storage/belt/medical/emt
	gloves = /obj/item/clothing/gloves/thick
	backpack_contents = list(/obj/item/weapon/gun/energy/gun/martin = 1, /obj/item/weapon/cell/small/high = 1)

/decl/hierarchy/outfit/job/security/ihoper
	name = OUTFIT_JOB_NAME("Marshal - Marshal Officer")
	l_pocket = /obj/item/device/flash
	uniform = /obj/item/clothing/under/rank/security
	mask = /obj/item/clothing/mask/balaclava/tactical
	glasses = /obj/item/clothing/glasses/sechud/tactical
	head = /obj/item/clothing/head/helmet
	gloves = /obj/item/clothing/gloves/thick
	backpack_contents = list(/obj/item/weapon/handcuffs = 1, /obj/item/device/lighting/toggleable/flashlight/seclite = 1, /obj/item/weapon/cell/small/high = 2, /obj/item/weapon/gun/energy/gun/martin = 1)

/decl/hierarchy/outfit/job/security/troop
	name = OUTFIT_JOB_NAME("Blackshield - Trooper")
	l_pocket = /obj/item/device/flash
	uniform = /obj/item/clothing/under/rank/trooper
	mask = /obj/item/clothing/mask/balaclava/tactical
	glasses = /obj/item/clothing/glasses/ballistic
	head = /obj/item/clothing/head/rank/trooper/cap
	gloves = /obj/item/clothing/gloves/thick/swat
	backpack_contents = list(/obj/item/weapon/handcuffs = 1, /obj/item/device/lighting/toggleable/flashlight/seclite = 1, /obj/item/weapon/cell/small/high = 2, /obj/item/weapon/gun/energy/gun/martin = 1, /obj/item/weapon/tool/knife/tacknife = 1)
