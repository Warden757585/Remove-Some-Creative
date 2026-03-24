#If in spectator tag the player if not then don't:
tag @a[gamemode=spectator] add in_spectator
tag @a[gamemode=!spectator] remove in_spectator
#Then announce it and add a tag to say that its been announced:
execute as @a[gamemode=spectator, tag=!announced_spectator] run tellraw @a [{text: "WARNING Player(s) in spectator: ", bold:true, color:"yellow"},{selector:"@s", color:"blue"}]
tag @a[gamemode=spectator,tag=!announced_spectator] add announced_spectator
#If they leave spectator then remove the announced_spectator tag:
tag @a[gamemode=!spectator] remove announced_spectator