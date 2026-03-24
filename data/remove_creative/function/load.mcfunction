# Create the time scoreboard and add the time_cap1
scoreboard objectives add time dummy
scoreboard players set #time_cap1 time 20
scoreboard players set #num_cap1 time 1
# After that announce in chat that the datapack  is loaded
tellraw @a {"text":"Remove Creative Datapack Loaded","color":"gold","bold":true}