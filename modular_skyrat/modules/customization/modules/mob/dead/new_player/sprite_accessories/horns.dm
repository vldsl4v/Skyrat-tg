/datum/sprite_accessory/horns
	key = "horns"
	generic = "Horns"
	relevent_layers = list(BODY_BEHIND_LAYER, BODY_FRONT_LAYER, BODY_ADJ_LAYER)
	icon = 'modular_skyrat/master_files/icons/mob/sprite_accessory/horns.dmi'
	default_color = "#555555"
	genetic = TRUE

/datum/sprite_accessory/horns/is_hidden(mob/living/carbon/human/H, obj/item/bodypart/HD)
	if(H.head && ((H.head.flags_inv & HIDEHAIR) && H.try_hide_mutant_parts) || !HD)
		return TRUE
	return FALSE

/datum/sprite_accessory/horns/angler
	default_color = DEFAULT_SECONDARY

/datum/sprite_accessory/horns/ram
	name = "Ram"
	icon_state = "ram"

/datum/sprite_accessory/horns/guilmon
	name = "Guilmon"
	icon_state = "guilmon"

/datum/sprite_accessory/horns/drake
	name = "Drake"
	icon_state = "drake"

/datum/sprite_accessory/horns/knight
	name = "Knight"
	icon_state = "knight"

/datum/sprite_accessory/horns/uni
	name = "Uni"
	icon_state = "uni"

/datum/sprite_accessory/horns/big
	icon = 'modular_skyrat/master_files/icons/mob/sprite_accessory/horns_big.dmi'

/datum/sprite_accessory/horns/big/antlers
	name = "Antlers"
	icon_state = "antlers"
