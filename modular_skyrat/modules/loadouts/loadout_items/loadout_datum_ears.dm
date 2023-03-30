
// --- Loadout item datums for ears ---

/// Ear Slot Items (Moves overrided items to backpack)
GLOBAL_LIST_INIT(loadout_ears, generate_loadout_items(/datum/loadout_item/ears))

/datum/loadout_item/ears
	category = LOADOUT_ITEM_EARS

/datum/loadout_item/ears/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE, override_items = LOADOUT_OVERRIDE_BACKPACK)
	if(override_items == LOADOUT_OVERRIDE_BACKPACK && !visuals_only)
		if(outfit.ears)
			LAZYADD(outfit.backpack_contents, outfit.ears)
		outfit.ears = item_path
	else
		outfit.ears = item_path

/datum/loadout_item/ears/headphones
	name = "Headphones"
	item_path = /obj/item/instrument/piano_synth/headphones

/datum/loadout_item/ears/earmuffs
	name = "Earmuffs"
	item_path = /obj/item/clothing/ears/earmuffs
