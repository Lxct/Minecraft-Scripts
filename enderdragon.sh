cmd "kc kr coords -12 -12 12 12 world_the_end"
sleep 10
cmd "execute in minecraft:the_end run summon minecraft:ender_dragon 0.5 65 0.5"
cmd "execute in minecraft:the_end positioned 0 70 0 as @e[type=minecraft:armor_stand,distance=..200,nbt={Invulnerable:1b}] at @s run summon minecraft:end_crystal ~ ~ ~"
sleep 1
xcmd "function vkit:enderdragon"
sleep 60
cmd "kc ra"
