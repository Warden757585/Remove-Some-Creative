#If in creative tag the player if not then don't:
tag @a[gamemode=creative] add in_creative
tag @a[gamemode=!creative] remove in_creative
#Then announce it and add a tag to say that its been announced:
execute as @a[gamemode=creative, tag=!announced] run tellraw @a [{text: "WARNING Player(s) in creative:", bold:true, color:"red"},{selector:"@s", color:"gold"}]
tag @a[gamemode=creative,tag=!announced] add announced
#If they leave creative then remove the announced tag:
tag @a[gamemode=!creative] remove announced