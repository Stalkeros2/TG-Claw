/*
Vault access doors
Overseer/Chief of security: 19 ACCESS_HEADS
Security: 1 ACCESS_SECURITY
General access: 31 ACCESS_CARGO
Engineering: 10, 11 ACCESS_ENGINE_EQUIP, ACCESS_ENGINE
Science: 47 ACCESS_RESEARCH
*/

/*
Overseer
*/
/datum/job/f13overseer
	title = "Overseer"
	flag = F13OVERSEER
	department_flag = VAULT
	head_announce = list("Security")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Vault-Tec"
	selection_color = "#ccffcc"
	req_admin_notify = 1
	minimal_player_age = 6

	outfit = /datum/outfit/job/f13overseer

	access = list(ACCESS_HEADS, ACCESS_CARGO, ACCESS_SECURITY,ACCESS_RESEARCH, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_CHANGE_IDS)
	minimal_access = list(ACCESS_HEADS, ACCESS_CARGO, ACCESS_SECURITY,ACCESS_RESEARCH, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE, ACCESS_CHANGE_IDS)

/datum/outfit/job/f13overseer
	name = "Overseer"
	jobtype = /datum/job/f13overseer

	implants = list(/obj/item/implant/mindshield)

	id = 			/obj/item/card/id/gold
	//pda
	uniform = 		/obj/item/clothing/under/f13/vault
	shoes = 		/obj/item/clothing/shoes/jackboots
	glasses = 		/obj/item/clothing/glasses/sunglasses
	ears = 			/obj/item/radio/headset/headset_overseer
	shoes = 		/obj/item/clothing/shoes/sneakers/brown
	backpack = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(
		/obj/item/storage/box/ids=1,\
		/obj/item/melee/oldstyle=1)

///datum/outfit/f13overseer/post_equip(mob/living/carbon/human/H)
	//..()
	//var/obj/item/radio/headset/heads/captain/R = H.ears
	//R.set_frequency(FREQ_F13_VAULT)
	//R.freqlock = TRUE
	//R.independent = TRUE
	//H.dna.species.stunmod = 0

/*
Head of Security
*/

/datum/job/f13hos
	title = "Chief of Security"
	flag = F13HOS
	department_head = list("Overseer")
	department_flag = VAULT
	head_announce = list("Security")
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the overseer"
	selection_color = "#ccffcc"
	req_admin_notify = 1
	minimal_player_age = 4

	outfit = /datum/outfit/job/f13hos

	access = list(ACCESS_HEADS, ACCESS_SECURITY, ACCESS_CARGO)
	minimal_access = list(ACCESS_HEADS, ACCESS_SECURITY, ACCESS_CARGO)

/datum/outfit/job/f13hos
	name = "Chief of Security"
	jobtype = /datum/job/f13hos

	id = /obj/item/card/id/silver
	//pda
	ears = 			/obj/item/radio/headset/headset_vault_hos/alt
	uniform = 		/obj/item/clothing/under/f13/vault
	shoes = 		/obj/item/clothing/shoes/jackboots
	suit = 			/obj/item/clothing/suit/armor/vest/alt
	head = 			/obj/item/clothing/head/collectable/police/cos
	glasses = 		/obj/item/clothing/glasses/hud/security/sunglasses
	l_hand =		/obj/item/shield/riot
	r_pocket = 		/obj/item/assembly/flash/handheld
	l_pocket = 		/obj/item/restraints/handcuffs
	backpack = 		/obj/item/storage/backpack/security
	satchel = 		/obj/item/storage/backpack/satchel/sec
	duffelbag = 	/obj/item/storage/backpack/duffelbag/sec
	box = 			/obj/item/storage/box/security
	backpack_contents = list(
		/obj/item/melee/oldstyle=1,\
		/obj/item/restraints/handcuffs=2)

	implants = list(/obj/item/implant/mindshield)


/*
Medical Doctor
*/
/datum/job/f13doctor
	title = "Vault-tec Doctor"
	flag = F13DOCTOR
	department_head = list("Overseer")
	department_flag = VAULT
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the overseer"
	selection_color = "#ddffdd"

	outfit = /datum/outfit/job/f13doctor

	access = list(ACCESS_CARGO)
	minimal_access = list(ACCESS_CARGO)

/datum/outfit/job/f13doctor
	name = "Medical Doctor"
	jobtype = /datum/job/f13doctor

	//pda
	uniform = 		/obj/item/clothing/under/f13/vault
	ears = 			/obj/item/radio/headset/headset_med
	shoes = 		/obj/item/clothing/shoes/jackboots
	suit =			/obj/item/clothing/suit/toggle/labcoat
	l_hand = 		/obj/item/storage/firstaid/regular
	suit_store = 	/obj/item/flashlight/pen
	backpack = 		/obj/item/storage/backpack/medic
	satchel = 		/obj/item/storage/backpack/satchel/med
	duffelbag = 	/obj/item/storage/backpack/duffelbag/med


/*
Scientist
*/
/datum/job/f13vaultscientist
	title = "Vault-tec Scientist"
	flag = F13VAULTSCIENTIST
	department_head = list("Overseer")
	department_flag = VAULT
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the overseer"
	selection_color = "#ddffdd"

	outfit = /datum/outfit/job/f13vaultscientist

	access = list(ACCESS_CARGO, ACCESS_RESEARCH)
	minimal_access = list(ACCESS_CARGO, ACCESS_RESEARCH)

/datum/outfit/job/f13vaultscientist
	name = "Scientist"
	jobtype = /datum/job/f13vaultscientist

	//pda
	uniform = 		/obj/item/clothing/under/f13/vault
	ears = 			/obj/item/radio/headset/headset_sci
	shoes = 		/obj/item/clothing/shoes/jackboots
	suit =			/obj/item/clothing/suit/toggle/labcoat
	backpack = 		/obj/item/storage/backpack/science
	satchel = 		/obj/item/storage/backpack/satchel/tox

/*
Security Officer
*/
/datum/job/f13officer
	title = "Vault-tec Security"
	flag = F13OFFICER
	department_head = list("Chief of Security")
	department_flag = VAULT
	faction = "Station"
	total_positions = 2 //Handled in /datum/controller/occupations/proc/setup_officer_positions()
	spawn_positions = 2 //Handled in /datum/controller/occupations/proc/setup_officer_positions()
	supervisors = "the head of security"
	selection_color = "#ddffdd"
	minimal_player_age = 1

	outfit = /datum/outfit/job/f13security

	access = list(ACCESS_SECURITY, ACCESS_CARGO)
	minimal_access = list(ACCESS_SECURITY, ACCESS_CARGO)


/datum/job/f13officer/get_access()
	var/list/L = list()
	L |= ..() | check_config_for_sec_maint()
	return L

/datum/job/f13officer/after_spawn(mob/living/carbon/human/H, mob/M)
	// Assign department security
	var/department
	if(M && M.client && M.client.prefs)
		department = M.client.prefs.prefered_security_department
		if(!LAZYLEN(GLOB.available_depts) || department == "None")
			return
		else if(department in GLOB.available_depts)
			LAZYREMOVE(GLOB.available_depts, department)
		else
			department = pick_n_take(GLOB.available_depts)
	var/ears = null
	var/accessory = null
	var/list/dep_access = null
	var/destination = null
	var/spawn_point = null
	switch(department)
		if(SEC_DEPT_SUPPLY)
			ears = /obj/item/radio/headset/headset_sec/alt/department/supply
			dep_access = list(ACCESS_MAILSORTING, ACCESS_MINING, ACCESS_MINING_STATION)
			destination = /area/security/checkpoint/supply
			spawn_point = locate(/obj/effect/landmark/start/depsec/supply) in GLOB.department_security_spawns
			accessory = /obj/item/clothing/accessory/armband/cargo
		if(SEC_DEPT_ENGINEERING)
			ears = /obj/item/radio/headset/headset_sec/alt/department/engi
			dep_access = list(ACCESS_CONSTRUCTION, ACCESS_ENGINE)
			destination = /area/security/checkpoint/engineering
			spawn_point = locate(/obj/effect/landmark/start/depsec/engineering) in GLOB.department_security_spawns
			accessory = /obj/item/clothing/accessory/armband/engine
		if(SEC_DEPT_MEDICAL)
			ears = /obj/item/radio/headset/headset_sec/alt/department/med
			dep_access = list(ACCESS_MEDICAL)
			destination = /area/security/checkpoint/medical
			spawn_point = locate(/obj/effect/landmark/start/depsec/medical) in GLOB.department_security_spawns
			accessory =  /obj/item/clothing/accessory/armband/medblue
		if(SEC_DEPT_SCIENCE)
			ears = /obj/item/radio/headset/headset_sec/alt/department/sci
			dep_access = list(ACCESS_RESEARCH)
			destination = /area/security/checkpoint/science
			spawn_point = locate(/obj/effect/landmark/start/depsec/science) in GLOB.department_security_spawns
			accessory = /obj/item/clothing/accessory/armband/science

	if(accessory)
		var/obj/item/clothing/under/U = H.w_uniform
		U.attach_accessory(new accessory)
	if(ears)
		if(H.ears)
			qdel(H.ears)
		H.equip_to_slot_or_del(new ears(H),SLOT_EARS)

	var/obj/item/card/id/W = H.wear_id
	W.access |= dep_access

	var/teleport = 0
	if(!CONFIG_GET(flag/sec_start_brig))
		if(destination || spawn_point)
			teleport = 1
	if(teleport)
		var/turf/T
		if(spawn_point)
			T = get_turf(spawn_point)
			H.Move(T)
		else
			var/safety = 0
			while(safety < 25)
				T = safepick(get_area_turfs(destination))
				if(T && !H.Move(T))
					safety += 1
					continue
				else
					break
	if(department)
		to_chat(M, "<b>You have been assigned to [department]!</b>")
	else
		to_chat(M, "<b>You have not been assigned to any department. Patrol the halls and help where needed.</b>")



/datum/outfit/job/f13security
	name = "Vault-tec Security"
	jobtype = /datum/job/f13officer

	//pda
	ears = 			/obj/item/radio/headset/headset_sec/alt
	uniform = 		/obj/item/clothing/under/f13/vault
	head = 			/obj/item/clothing/head/helmet/riot/vaultsec
	suit =			/obj/item/clothing/suit/armor/vest/alt
	shoes = 		/obj/item/clothing/shoes/jackboots
	l_hand =		/obj/item/shield/riot
	l_pocket = 		/obj/item/restraints/handcuffs
	r_pocket = 		/obj/item/assembly/flash/handheld
	backpack = 		/obj/item/storage/backpack/security
	satchel = 		/obj/item/storage/backpack/satchel/sec
	duffelbag = 	/obj/item/storage/backpack/duffelbag/sec
	box = 			/obj/item/storage/box/security
	backpack_contents = list(
		/obj/item/melee/oldstyle=1, \
		/obj/item/restraints/handcuffs=1)

	implants = list(/obj/item/implant/mindshield)


/obj/item/radio/headset/headset_sec/alt/department/Initialize()
	. = ..()
	wires = new/datum/wires/radio(src)
	secure_radio_connections = new
	recalculateChannels()

/obj/item/radio/headset/headset_sec/alt/department/engi
	keyslot = new /obj/item/encryptionkey/headset_sec
	keyslot2 = new /obj/item/encryptionkey/headset_eng

/obj/item/radio/headset/headset_sec/alt/department/supply
	keyslot = new /obj/item/encryptionkey/headset_sec
	keyslot2 = new /obj/item/encryptionkey/headset_cargo

/obj/item/radio/headset/headset_sec/alt/department/med
	keyslot = new /obj/item/encryptionkey/headset_sec
	keyslot2 = new /obj/item/encryptionkey/headset_med

/obj/item/radio/headset/headset_sec/alt/department/sci
	keyslot = new /obj/item/encryptionkey/headset_sec
	keyslot2 = new /obj/item/encryptionkey/headset_sci

/*
Station Engineer
*/
/datum/job/f13vaultengineer
	title = "Vault-tec Engineer"
	flag = F13VAULTENGINEER
	department_head = list("Overseer")
	department_flag = VAULT
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the overseer"
	selection_color = "#ddffdd"

	outfit = /datum/outfit/job/f13vaultengineer

	access = list(ACCESS_CARGO, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE)
	minimal_access = list(ACCESS_CARGO, ACCESS_ENGINE_EQUIP, ACCESS_ENGINE)

/datum/outfit/job/f13vaultengineer
	name = "Vault-tec Engineer"
	jobtype = /datum/job/f13vaultengineer

	//pda
	ears = 			/obj/item/radio/headset/headset_eng
	uniform = 		/obj/item/clothing/under/f13/vault
	belt = 			/obj/item/storage/belt/utility/full/engi
	shoes = 		/obj/item/clothing/shoes/workboots
	head = 			/obj/item/clothing/head/hardhat
	r_pocket = 		/obj/item/t_scanner
	backpack = 		/obj/item/storage/backpack/industrial
	satchel = 		/obj/item/storage/backpack/satchel/eng
	duffelbag = 	/obj/item/storage/backpack/duffelbag/engineering
	box = 			/obj/item/storage/box/engineer

/datum/job/f13vaultdweller
	title = "Vault Dweller"
	flag = F13DWELLER
	department_head = list("Overseer")
	department_flag = VAULT
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	supervisors = "the overseer"
	selection_color = "#ddffdd"

	outfit = /datum/outfit/job/f13vaultdweller

	access = list(ACCESS_CARGO)
	minimal_access = list(ACCESS_CARGO)


/datum/outfit/job/f13vaultdweller
	uniform = 		/obj/item/clothing/under/f13/vault
	ears = 			/obj/item/radio/headset/headset_med