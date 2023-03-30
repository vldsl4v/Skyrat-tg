/obj/item/ttsdevice
	name = "TTS device"
	desc = "A small device with a keyboard attached. Anything entered on the keyboard is played out the speaker. \n<span class='notice'>Alt-click the device to make it beep.</span> \n<span class='notice'>Ctrl-click to name the device."
	icon = 'icons/obj/device.dmi'
	icon_state = "gangtool-purple"
	lefthand_file = 'icons/mob/inhands/misc/devices_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/misc/devices_righthand.dmi'
	w_class = WEIGHT_CLASS_SMALL
	obj_flags = UNIQUE_RENAME
	slot_flags = ITEM_SLOT_BELT

/obj/item/ttsdevice/attack_self(mob/user)
	visible_message("[user] starts typing on [src].", "You begin typing on [src].", "You hear faint, continuous mechanical clicking noises.")
	playsound(src, 'modular_skyrat/master_files/sound/items/tts/started_type.ogg', 50, TRUE)
	var/input = stripped_input(user,"What would you like the device to say?", ,"", 500)
	if(QDELETED(src) || !user.canUseTopic(src, BE_CLOSE))
		return
	if(!input)
		visible_message("[user] stops typing on [src].", "You stop typing on [src].", "You hear the clicking noises stop.")
		playsound(src, 'modular_skyrat/master_files/sound/items/tts/stopped_type.ogg', 50, TRUE)
		return
	src.say(input)
	input = null

/obj/item/ttsdevice/AltClick(mob/living/user)
	var/noisechoice = input(user, "What noise would you like to make?", "Robot Noises") as null|anything in list("Beep","Buzz","Ping")
	if(noisechoice == "Beep")
		user.visible_message(span_notice("[user] has made their TTS beep!"), "You make your TTS beep!")
		playsound(user, 'sound/machines/twobeep.ogg', 50, 1, -1)
	if(noisechoice == "Buzz")
		user.visible_message(span_notice("[user] has made their TTS buzz!"), "You make your TTS buzz!")
		playsound(user, 'sound/machines/buzz-sigh.ogg', 50, 1, -1)
	if(noisechoice == "Ping")
		user.visible_message(span_notice("[user] has made their TTS ping!"), "You make your TTS ping!")
		playsound(user, 'sound/machines/ping.ogg', 50, 1, -1)

/obj/item/ttsdevice/CtrlClick(mob/living/user)
	var/new_name = input(user, "Name your Text-to-Speech device: \nThis matters for displaying it in the chat bar:", "TTS Device")  as text|null
	if(new_name)
		new_name = reject_bad_name(new_name)
		name = "[new_name]'s [initial(name)]"
