scoreboard players add #timer1 time 1
execute if score #timer1 time = #time_cap1 time run function remove_creative:creative_check
execute if score #timer1 time = #time_cap1 time run function remove_creative:spectator_check
execute if score #timer1 time = #time_cap1 time run scoreboard players set #timer1 time 0 