/obj/item/clothing/head/soft
	name = "cargo cap"
	desc = "It's a baseball hat in a tasteful brown colour."
	icon_state = "cargosoft"
	inhand_icon_state = "helmet"
	var/soft_type = "cargo"

	dog_fashion = /datum/dog_fashion/head/cargo_tech

	var/flipped = FALSE

/obj/item/clothing/head/soft/dropped()
	icon_state = "[soft_type]soft"
	flipped = FALSE
	..()

/obj/item/clothing/head/soft/verb/flipcap()
	set category = "Object"
	set name = "Flip cap"

	flip(usr)


/obj/item/clothing/head/soft/AltClick(mob/user)
	..()
	if(user.canUseTopic(src, be_close = TRUE, no_dexterity = TRUE, no_tk = FALSE, need_hands = !iscyborg(user)))
		flip(user)


/obj/item/clothing/head/soft/proc/flip(mob/user)
	if(!user.incapacitated())
		flipped = !flipped
		if(flipped)
			icon_state = "[soft_type]soft_flipped"
			to_chat(user, span_notice("You flip the hat backwards."))
		else
			icon_state = "[soft_type]soft"
			to_chat(user, span_notice("You flip the hat back in normal position."))
		usr.update_worn_head() //so our mob-overlays update

/obj/item/clothing/head/soft/examine(mob/user)
	. = ..()
	. += span_notice("Alt-click the cap to flip it [flipped ? "forwards" : "backwards"].")

/obj/item/clothing/head/soft/red
	name = "red cap"
	desc = "It's a baseball hat in a tasteless red colour."
	icon_state = "redsoft"
	soft_type = "red"
	dog_fashion = null

/obj/item/clothing/head/soft/blue
	name = "blue cap"
	desc = "It's a baseball hat in a tasteless blue colour."
	icon_state = "bluesoft"
	soft_type = "blue"
	dog_fashion = null

/obj/item/clothing/head/soft/green
	name = "green cap"
	desc = "It's a baseball hat in a tasteless green colour."
	icon_state = "greensoft"
	soft_type = "green"
	dog_fashion = null

/obj/item/clothing/head/soft/yellow
	name = "yellow cap"
	desc = "It's a baseball hat in a tasteless yellow colour."
	icon_state = "yellowsoft"
	soft_type = "yellow"
	dog_fashion = null

/obj/item/clothing/head/soft/grey
	name = "grey cap"
	desc = "It's a baseball hat in a tasteful grey colour."
	icon_state = "greysoft"
	soft_type = "grey"
	dog_fashion = null

/* A grey baseball cap that grants TRAIT_JOLLY when it's on your head.
 * Used for testing that gaining and losing the JOLLY trait behaves properly.
 * Also a perfectly valid weird admin reward.
 */
/obj/item/clothing/head/soft/grey/jolly
	name = "jolly grey cap"
	desc = "It's a baseball hat in a sublime grey colour. Why, wearing this alone would boost a person's spirits!"
	clothing_traits = list(TRAIT_JOLLY)

/obj/item/clothing/head/soft/orange
	name = "orange cap"
	desc = "It's a baseball hat in a tasteless orange colour."
	icon_state = "orangesoft"
	soft_type = "orange"
	dog_fashion = null

/obj/item/clothing/head/soft/mime
	name = "white cap"
	desc = "It's a baseball hat in a tasteless white colour."
	icon_state = "mimesoft"
	soft_type = "mime"
	dog_fashion = null

/obj/item/clothing/head/soft/purple
	name = "purple cap"
	desc = "It's a baseball hat in a tasteless purple colour."
	icon_state = "purplesoft"
	soft_type = "purple"
	dog_fashion = null

/obj/item/clothing/head/soft/black
	name = "black cap"
	desc = "It's a baseball hat in a tasteless black colour."
	icon_state = "blacksoft"
	soft_type = "black"
	dog_fashion = null

/obj/item/clothing/head/soft/rainbow
	name = "rainbow cap"
	desc = "It's a baseball hat in a bright rainbow of colors."
	icon_state = "rainbowsoft"
	soft_type = "rainbow"
	dog_fashion = null

/obj/item/clothing/head/soft/sec
	name = "security cap"
	desc = "It's a robust baseball hat in tasteful red colour."
	icon_state = "secsoft"
	soft_type = "sec"
	armor = list(MELEE = 30, BULLET = 25, LASER = 25, ENERGY = 35, BOMB = 25, BIO = 0, FIRE = 20, ACID = 50)
	strip_delay = 60
	dog_fashion = null

/obj/item/clothing/head/soft/paramedic
	name = "paramedic cap"
	desc = "It's a baseball hat with a dark turquoise color and a reflective cross on the top."
	icon_state = "paramedicsoft"
	soft_type = "paramedic"
	dog_fashion = null
