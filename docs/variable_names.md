# _DARS generator_ variable names

_DARS generator_ has variable names that don't make sense to animals,
but only to the _DARS generator_ computer program.
this table translates them to animal-readable names.

## contents

- age rating criteria
- age rating override

## age rating criteria

computers' name | animals' name
---|---
``humor`` | Humor
``humor == 0`` | —
``humor == 1`` | comic mischief
``humor == 2`` | crude humor
``humor == 3`` | adult humor
``language``  | Language
``language == 0`` | —
``language == 1`` | mild swearing
``language == 2`` | swearing
``language == 3`` | sexually explicit language
``language == 4`` | blasphemy
``violence`` | Violence
``violence == 0`` | —
``violence == 1`` | mild cartoon violence
``violence == 2`` | cartoon violence
``violence == 3`` | violence
``violence == 4`` | intense violence
``drugs`` | Drugs
``drugs == 0`` | —
``drugs == 1`` | drug references
``drugs == 2`` | drug use
``fear`` | Fear
``fear == 0`` | —
``fear == 1`` | fear
``fear == 2`` | mild horror
``fear == 3`` | horror
``sexual`` | Sexual
``sexual == 0`` | —
``sexual == 1`` | sexual innuendo
``sexual == 2`` | sexual nudity (genitals hidden)
``sexual == 3`` | sex (genitals hidden)
``sexual == 4`` | sexual nudity
``sexual == 5`` | explicit sex
``gore`` | Blood & Gore
``gore == 0`` | —
``gore == 1`` | cartoon blood
``gore == 2`` | blood
``gore == 3`` | blood & gore
``gambling`` | Gambling
``gambling == 0`` | —
``gambling == 1`` | gambling (with play money)
``gambling == 2`` | gambling (with real money)
``flashing_lights`` | Flashing lights
``flashing_lights == 0`` | —
``flashing_lights == 1`` | flashing lights
``discriminaton`` | Discrimination
``discrimination == 0`` | —
``discrimination == 1`` | discrimination
``ads`` | Ads
``ads == 0`` | —
``ads == 1`` | ads
``player_made_content`` | Player-made content
``player_made_content == 0`` | —
``player_made_content == 1`` | player-made content
``online_multiplayer`` | Online multiplayer
``online_multiplayer == 0`` | —
``online_multiplayer == 1`` | online multiplayer
``purchases`` | Purchases
``purchases == 0`` | —
``purchases == 1`` | one-time purchases
``purchases == 2`` | consumable purchases
``purchases == 3`` | subscriptions

## age rating override

the variable is named ``eu_style`` because
- DARS uses _European style_ number age ratings
- future DARS versions might add _USA style_ words age ratings
  as an option, but most likely not

computers' name | animals' name
---|---
``eu_style == 0`` | automatic (recommended for most games)
``eu_style == 1`` | ages 3 and up
``eu_style == 2`` | ages 6 and up
``eu_style == 3`` | ages 13 and up
``eu_style == 4`` | ages 16 and up
``eu_style == 5`` | ages 18 and up
