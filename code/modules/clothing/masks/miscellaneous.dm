/obj/item/clothing/mask/muzzle
	name = "muzzle"
	desc = "To stop that awful noise."
	icon_state = "muzzle"
	item_state = "muzzle"
	flags = FPRINT
	w_class = W_CLASS_SMALL
	gas_transfer_coefficient = 0.90
	species_fit = list(VOX_SHAPED)
	origin_tech = Tc_BIOTECH + "=2"
	body_parts_covered = MOUTH

//Monkeys can not take the muzzle off of themself! Call PETA!
/obj/item/clothing/mask/muzzle/attack_paw(mob/user as mob)
	if (src == user.wear_mask)
		return
	else
		..()
	return


/obj/item/clothing/mask/surgical
	name = "sterile mask"
	desc = "A sterile mask designed to help prevent the spread of diseases."
	icon_state = "sterile"
	item_state = "sterile"
	w_class = W_CLASS_TINY
	flags = FPRINT
	gas_transfer_coefficient = 0.90
	permeability_coefficient = 0.01
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 25, rad = 0)
	species_fit = list(VOX_SHAPED, GREY_SHAPED)

/obj/item/clothing/mask/fakemoustache
	name = "fake moustache"
	desc = "Warning: moustache is fake."
	icon_state = "fake-moustache"
	flags = FPRINT
	body_parts_covered = FACE //totally intentional

//scarves (fit in in mask slot)
/obj/item/clothing/mask/scarf
	flags = FPRINT
	action_button_name = "Toggle Scarf"
	w_class = W_CLASS_SMALL
	gas_transfer_coefficient = 0.90
	can_flip = 1
	heat_conductivity = INS_MASK_HEAT_CONDUCTIVITY

/obj/item/clothing/mask/scarf/blue
	name = "blue neck scarf"
	desc = "A blue neck scarf."
	icon_state = "blue_scarf"
	item_state = "blue_scarf"


/obj/item/clothing/mask/scarf/red
	name = "red scarf"
	desc = "A red neck scarf."
	icon_state = "red_scarf"
	item_state = "red_scarf"


/obj/item/clothing/mask/scarf/green
	name = "green scarf"
	desc = "A green and red line patterned scarf."
	icon_state = "green_scarf"
	item_state = "green_scarf"

/obj/item/clothing/mask/balaclava
	name = "balaclava"
	desc = "LOADSAMONEY"
	icon_state = "balaclava"
	item_state = "balaclava"
	flags = FPRINT
	body_parts_covered = FACE
	w_class = W_CLASS_SMALL
	species_fit = list(VOX_SHAPED, GREY_SHAPED)

/obj/item/clothing/mask/balaclava/skimask
	heat_conductivity = INS_MASK_HEAT_CONDUCTIVITY
	name = "ski mask"
	desc = "This NT-brand skimask is sure to keep you warm."

/obj/item/clothing/mask/neorussian
	name = "neo-Russian mask"
	desc = "Somehow, it makes you act and look way more polite than usual."
	icon_state = "nr_mask"
	item_state = "nr_mask"
	body_parts_covered = FACE

/obj/item/clothing/mask/pig
	name = "pig mask"
	desc = "A rubber pig mask."
	icon_state = "pig"
	item_state = "pig"
	flags = FPRINT
	body_parts_covered = FACE
	w_class = W_CLASS_SMALL
	siemens_coefficient = 0.9

/obj/item/clothing/mask/horsehead
	name = "horse head mask"
	desc = "A mask made of soft vinyl and latex, representing the head of a horse."
	icon_state = "horsehead"
	item_state = "horsehead"
	flags = FPRINT
	body_parts_covered = FACE
	w_class = W_CLASS_SMALL
	var/voicechange = 0
	siemens_coefficient = 0.9

/obj/item/clothing/mask/horsehead/treat_mask_speech(var/datum/speech/speech)
	if(src.voicechange)
		speech.message = pick("NEEIIGGGHHHH!", "NEEEIIIIGHH!", "NEIIIGGHH!", "HAAWWWWW!", "HAAAWWW!")

/obj/item/clothing/mask/horsehead/magic
	voicechange = 1		//NEEEEIIGHH

/obj/item/clothing/mask/horsehead/magic/dropped(mob/user as mob)
	canremove = 1
	..()

/obj/item/clothing/mask/horsehead/magic/equipped(var/mob/user, var/slot)
	if (slot == slot_wear_mask)
		canremove = 0		//curses!
	..()

/obj/item/clothing/mask/chapmask
	name = "venetian mask"
	desc = "A plain porcelain mask that covers the entire face. Standard attire for particularly unspeakable religions. The eyes are wide shut."
	icon_state = "chapmask"
	item_state = "chapmask"
	flags = FPRINT
	body_parts_covered = FACE
	w_class = W_CLASS_SMALL
	gas_transfer_coefficient = 0.90

/obj/item/clothing/mask/bandana
	name = "bandana"
	desc = "A colorful bandana."
	action_button_name = "Toggle Bandana"
	w_class = W_CLASS_TINY
	can_flip = 1

obj/item/clothing/mask/bandana/red
	name = "red bandana"
	icon_state = "bandred"

obj/item/clothing/mask/joy
	name = "joy mask"
	desc = "Express your happiness or hide your sorrows with this laughing face with crying tears of joy cutout."
	icon_state = "joy"
