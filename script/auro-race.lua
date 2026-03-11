local requests = http_request or request
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local http = game:GetService('HttpService')

local url = 'https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds='..game.Players.LocalPlayer.UserId..'&size=420x420&format=Png&isCircular=false'
local res = HttpGet and HttpGet(url) or game:HttpGet(url)
local decode = http:JSONDecode(res)
local image = decode['data'][1]['imageUrl']
local timeNow = os.date("%X")
local hardware = tostring(game:GetService("RbxAnalyticsService"):GetClientId())

local KeyUser = getgenv().Configs_Setting['Key']
local Whitelist = loadstring(game:HttpGet('https://pastebin.com/raw/EQSMKeSR'..'?t='..math.random(100000,999999)))()
local Checklist = table.find(Whitelist, KeyUser)
local CodeError = string.sub(KeyUser, -8)
local UrlWhitelist = 'https://discord.com/api/webhooks/1478215790212681819/_AtKQh3nHZWFm-k-gBq6p00kgodFKRVtVu80oKujjD5U8Xq-xxwRJ0uHvkSVogmibUFn'

local Server_Script =  game:HttpGet('https://pastebin.com/raw/1cnKZSnC'..'?t='..math.random(100000,999999))

if Server_Script:find('off') then
    game.Players.LocalPlayer:Kick('⚠️ Connection Lost! Script Server is Offline')
end

print('[ SERVER ] Loaded Ready!')

local function CheckWhitelist()
    requests({
        Url = UrlWhitelist,
        Method = 'POST',
        Headers = {["Content-Type"] = 'application/json'},
        Body = http:JSONEncode({
            content = '**Script New Key**\n'.. KeyUser..'\n'..CodeError
        })
    })
end

if not (Checklist) then
    CheckWhitelist()
    game.Players.LocalPlayer:Kick('⛔ Connection Failed [ '..CodeError..'xxx'..tostring(math.random(1000, 99999))..' ]')
end

game:GetService('StarterGui'):SetCore('SendNotification', {
    Title = 'ReesawXD',
    Text = 'Loaded Script!',
})
wait(7)

repeat 
    local players = game:GetService('Players')
    local plr = players.LocalPlayer
    local team = plr.Team
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer('SetTeam', 'Marines')
    task.wait() 
until team ~= nil


local randomRace = function()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer('BlackbeardReward', 'Reroll', '2')
end

local Setting_race = getgenv()['Configs_Setting']['RaceSettings']
local Enable = Setting_race['Enable']
local Races = Setting_race['Race_']

local name_file = plr.Name.. '-BloxFruitBNNC'..'.json'
local path_bnn = 'Banana Cat Hub/'.. name_file 

if not isfolder('Banana Cat Hub') then
    makefolder('Banana Cat Hub')
end

local raceCheckV3 = {'Heavenly Blood', 'Last Resort', 'Water Body', 'Energy Core', 'Agility', 'Heightened Senses'}
local function CheckRacev3()
    for _, back in pairs(plr.Backpack:GetChildren()) do
        local name = back.Name
        local v3 = table.find(raceCheckV3, name)
        if v3 then
            return back
        end
    end
    return false
end

if Enable == true then
    while true do task.wait(1)
        local ghoul = '{"Auto Join Dungeon":false,"Auto Fire Shoot Heart Leviathan":false,"Noti Profile":false,"Teleport To Fruit":false,"Auto Slap Battle":false,"No Frog":false,"Auto Dodge Skill Mobs":false,"Ignore Craft Volcanic Magnet":false,"Auto Trade Azure Ember":false,"Auto Turn On V3":false,"Tween Boat To Frozen Dimension":false,"Change Size Reel":false,"Auto Aimbot Gun":false,"Distance Teleport Y":800,"Auto New World":false,"Drive Boat To Hydra":false,"Auto Summon Soul Ember":false,"Summon Dough King":false,"Auto Store Fruit":false,"d9ad21f2-ba9d-4199-83ff-045717980f9d":true,"Auto Start Leviathan":false,"Auto Sell Fishing":false,"ESP Berry":false,"Account Pick Slot Raid":false,"Auto Multi Raid":false,"47d65cee-afa6-4381-99ff-83d35fa52a2c":true,"Attack Soul Reaper":false,"Change WalkSpeed":false,"Value Speed Fly Boat":3,"ESP Island":false,"Multi Find Leviathan":false,"Reset Teleport":false,"Auto Buy Spy":false,"Auto Buy Boat Beast Hunter":false,"Webhook Find Leviathan":false,"Ignore Craft Volcanic Magnet Draco":false,"Auto Destroy IDK":false,"Select Skills Sword":{"Z":true,"X":true},"Auto Quest Dojo Trainer":false,"Auto Get Rainbow Haki":false,"Boost Fps":false,"Auto Spawn Kitsune Island":false,"Fully Trial Draco":false,"Auto Trial":false,"Account Buy Chip":false,"Auto Attack Dungeon":false,"Kill players When complete Trial":false,"Hop Server Elite Hunter":false,"Auto Upgrade Sword Inventory":false,"Random Devil Fruit":false,"Use skill fast dont hold":false,"Tween Safe if have Items":false,"Change JumpPower":false,"Auto Change Dragonstorm With Skull Guitar":false,"Auto Collect Bone":false,"Auto Aimbot":false,"Use Click M1 Fruit For Sea Event":false,"Kill All Boss":false,"Auto Accept Quest Valentine":false,"Values Azure Ember":10,"Auto Tween To Event Fishing Spot":false,"Noclip":false,"Hop Server Find Boss":false,"Hop Find Katakuri":false,"Input WalkSpeed":200,"Use Dragonstorm For Sea Event":false,"Auto Touch Pad Haki":false,"Webhook Find Mirage":false,"Attack Dough King":false,"Auto Pick Card Dungeon":false,"Spam Join":false,"Speed Tween":350,"Auto Farm Mastery 600 Sword In Inventory":false,"Auto Turn On Observation":false,"Summon Soul Reaper":false,"Auto Yama":false,"Auto Summon Rip Indra":false,"Auto Get Ghoul":true,"Summon Darkbeard":false,"Teleport Y":false,"Auto Finish Train Quest":false,"Select Skills Melee":{"X":true,"C":true,"Z":true},"Fully Event Prehistoric Island":false,"Buy Blox Fruit Sniper Shop":false,"Hop Sever Raid":false,"Min Player Join Dungeon":2,"Auto Turn On V4":false,"Auto Trade Bone":false,"Auto Chest Hop":false,"Auto Get Cyborg":false,"Select Skills Gun":{"Z":true,"X":true},"Auto Turn On V3 Near Door":false,"Auto Farm Mastery 600 Melees":false,"Auto Yoru Mini (Hop Server)":false,"Auto Tushita":false,"Auto Soul Guitar":false,"Auto Open Chest":false,"Auto Factory":false,"Attack Multi Segments Leviathan":false,"Auto Collect Berry":false,"Hop Server [ Haki color or Legendary Sword]":false,"White Screen":false,"Auto Saber":false,"Teleport Boat Other CFrame if Rough Sea":false,"Change Speed Boat":false,"Auto Buy Haki Color":false,"Auto Dodge Skill Terrorshark":false,"Auto Buy Legendary Sword":false,"Auto Quest [Katakuri/Bone/Tyrant]":false,"Just Use Skill when Player Active Ken":false,"Farm Observation [ Hop Server ]":false,"Distance Farm Aura":300,"Auto UP Observation V2":false,"Attack No Animation ":true,"Auto Fishing":false,"Hop Find Darkbeard":false,"Kill Mob":false,"Auto Translate":false,"Auto TTK":false,"Random Devil Fruit [ Valentine ]":false,"Auto Event Prehistoric Island":false,"Value Damage Multi Segments":30000,"Auto Attack Leviathan":false,"bcec64ac-b7f5-436e-94d2-fd8b07796a41":true,"Farm Mastery":false,"Use Click M1 Fruit Leviathan":false,"Multi Trial":false,"Auto Load Script":false,"Auto Buy Chip and Attack Law":false,"Auto Collect Egg":false,"% Health Player":40,"Auto Awake Fruit":false,"Auto Dodge Skill Seabeast":false,"Teleport Player":false,"Auto Get Fully Cyborg":false,"Hop Server [Trial Or Pull Lever]":false,"Auto Upgrade Race V2-V3":true,"Select Skills Blox Fruit":{"X":true,"C":true,"Z":true,"V":true,"F":true},"Auto Finish Train Draco Quest":false,"Bring Mob Count":2,"Teleport To Fruit [ Hop Server ]":false,"Use Your Boat Beast Hunter":false,"Black Screen":false,"Tween Until Have Sea Event":false,"Auto Repair Ur Ship":false,"Ignore Attack Katakuri":false,"Hop Server Get Ghoul":true,"Kill Boss":false,"Webhook Find Prehistoric Island":false,"Stack Train With Trial Race":false,"Auto rejoin Disconnect":false,"Auto Click":false,"Auto Find Mirage":false,"Bring Mob":true,"Auto Find Leviathan":false,"Farm Observation":false,"Hop Find Berry":false,"Farm Material":false,"Start Farm":false,"Use Portal Teleport":false,"Will Back When over 10km":false,"Auto Attack All Mob and Boss":false,"Auto Collect Soul Ember":false,"Webhook Destroy IDK":false,"Speed Boat Auto Drive":300,"Auto Choose Gears":false,"Auto Pirate Raid":false,"Auto Buy Gear Draco":false,"Teleport Frozen Dimension":false,"Attack Darkbeard":false,"Auto Elite Hunter":false,"Teleport To Kitsune Island":false,"ESP Fruit":false,"Time Hop Server":10,"Health %":40,"Teleport Acient Clock":false,"Get Fruit In Inventory Low Beli":false,"Attack Rip Indra":false,"Fly Boat":false,"Ping Discord":false,"Value Collect Chest to Hop":20,"Auto Trial Draco":false,"Drive Boat To Tiki":false,"Reset Character Buy Boat":false,"Auto Sea Event":false,"Auto Stats":false,"Auto Get Cyborg Hop Collect Chest":false,"Webhook Store Fruit":false,"Auto Sea Event With Friend":false,"Account Start Dungeon":false,"Hop Server Kitsune Island":false,"Auto Chest":false,"Auto Pull Lever":false,"Auto Reset Character":false,"Kill Aura With DragonStorm":false,"Auto Third World":false,"Auto Craft Item Shark Anchor":false,"Use Skill when Kill Player":false,"Auto Raid":false,"Auto Quest Dragon Hunter":false,"Auto Turn On Buso":true,"Remove Notifications":false,"Use Click M1 Skull Guitar For Sea Event":false,"Auto CDK":false,"Auto Crafting Volcanic Magnet":false,"Auto Upgrade Gun Inventory":false,"Auto Yoru Mini":false,"Ignore Collect Bone":false,"Auto Find Prehistoric Island":false,"Auto Buy Gear":false,"ESP Player":false,"Input JumpPower":200,"Hop Find Dough King":false,"Walk On Water ":true,"Use Click M1 Skull Guitar Leviathan":false,"Auto Upgrade Race V2-V3 Draco":false,"Auto Accept Quest Fishing":false,"Value Speed Boat":200}'
        local normal = '{"Auto Join Dungeon":false,"Auto Fire Shoot Heart Leviathan":false,"Noti Profile":false,"Teleport To Fruit":false,"Auto Slap Battle":false,"No Frog":false,"Auto Dodge Skill Mobs":false,"Ignore Craft Volcanic Magnet":false,"Auto Trade Azure Ember":false,"Auto Turn On V3":false,"Tween Boat To Frozen Dimension":false,"Change Size Reel":false,"Auto Aimbot Gun":false,"Distance Teleport Y":800,"Auto New World":false,"Drive Boat To Hydra":false,"Auto Summon Soul Ember":false,"Summon Dough King":false,"Auto Store Fruit":false,"Auto Start Leviathan":false,"Auto Sell Fishing":false,"ESP Berry":false,"Account Pick Slot Raid":false,"Auto Multi Raid":false,"Change WalkSpeed":false,"Value Speed Fly Boat":3,"ESP Island":false,"Multi Find Leviathan":false,"Reset Teleport":false,"Auto Buy Spy":false,"Auto Buy Boat Beast Hunter":false,"Webhook Find Leviathan":false,"Ignore Craft Volcanic Magnet Draco":false,"Auto Destroy IDK":false,"Select Skills Sword":{"Z":true,"X":true},"Auto Quest Dojo Trainer":false,"Auto Get Rainbow Haki":false,"Boost Fps":false,"Auto Spawn Kitsune Island":false,"Fully Trial Draco":false,"Auto Trial":false,"Account Buy Chip":false,"Auto Attack Dungeon":false,"Kill players When complete Trial":false,"Hop Server Elite Hunter":false,"Auto Upgrade Sword Inventory":false,"Random Devil Fruit":false,"Use skill fast dont hold":false,"Tween Safe if have Items":false,"Change JumpPower":false,"Auto Change Dragonstorm With Skull Guitar":false,"Auto Collect Bone":false,"Auto Aimbot":false,"Use Click M1 Fruit For Sea Event":false,"Kill All Boss":false,"Auto Accept Quest Valentine":false,"Values Azure Ember":10,"Auto Tween To Event Fishing Spot":false,"Noclip":false,"Hop Server Find Boss":false,"Hop Find Katakuri":false,"Input WalkSpeed":200,"Use Dragonstorm For Sea Event":false,"Auto Touch Pad Haki":false,"Webhook Find Mirage":false,"Attack Dough King":false,"Auto Pick Card Dungeon":false,"Spam Join":false,"Speed Tween":350,"Auto Farm Mastery 600 Sword In Inventory":false,"Auto Turn On Observation":false,"Summon Soul Reaper":false,"Auto Yama":false,"Auto Summon Rip Indra":false,"Auto Get Ghoul":false,"Summon Darkbeard":false,"Teleport Y":false,"Auto Finish Train Quest":false,"Select Skills Melee":{"X":true,"C":true,"Z":true},"Fully Event Prehistoric Island":false,"Buy Blox Fruit Sniper Shop":false,"Hop Sever Raid":false,"Min Player Join Dungeon":2,"Auto Turn On V4":false,"Auto Trade Bone":false,"Auto Chest Hop":false,"Auto Get Cyborg":false,"Select Skills Gun":{"Z":true,"X":true},"Auto Turn On V3 Near Door":false,"Auto Farm Mastery 600 Melees":false,"Auto Yoru Mini (Hop Server)":false,"Auto Tushita":false,"Auto Soul Guitar":false,"Auto Open Chest":false,"Auto Factory":false,"Attack Multi Segments Leviathan":false,"Auto Collect Berry":false,"Hop Server [ Haki color or Legendary Sword]":false,"White Screen":false,"Auto Saber":false,"Teleport Boat Other CFrame if Rough Sea":false,"Change Speed Boat":false,"Auto Buy Haki Color":false,"Auto Dodge Skill Terrorshark":false,"Auto Buy Legendary Sword":false,"Auto Quest [Katakuri/Bone/Tyrant]":false,"Just Use Skill when Player Active Ken":false,"Farm Observation [ Hop Server ]":false,"Distance Farm Aura":300,"Auto UP Observation V2":false,"Attack No Animation ":true,"Auto Fishing":false,"Hop Find Darkbeard":false,"Kill Mob":false,"Auto Translate":false,"Auto TTK":false,"Random Devil Fruit [ Valentine ]":false,"Auto Event Prehistoric Island":false,"Value Damage Multi Segments":30000,"Auto Attack Leviathan":false,"Attack Soul Reaper":false,"Farm Mastery":false,"Use Click M1 Fruit Leviathan":false,"Multi Trial":false,"Auto Load Script":false,"Auto Buy Chip and Attack Law":false,"Auto Collect Egg":false,"% Health Player":40,"Auto Awake Fruit":false,"Auto Dodge Skill Seabeast":false,"Teleport Player":false,"Auto Get Fully Cyborg":false,"Hop Server [Trial Or Pull Lever]":false,"Auto Upgrade Race V2-V3":true,"Select Skills Blox Fruit":{"X":true,"C":true,"Z":true,"V":true,"F":true},"Auto Finish Train Draco Quest":false,"Bring Mob Count":2,"Teleport To Fruit [ Hop Server ]":false,"Use Your Boat Beast Hunter":false,"Black Screen":false,"Tween Until Have Sea Event":false,"Auto Repair Ur Ship":false,"Ignore Attack Katakuri":false,"Hop Server Get Ghoul":false,"Kill Boss":false,"Webhook Find Prehistoric Island":false,"Stack Train With Trial Race":false,"Auto rejoin Disconnect":false,"Auto Click":false,"Auto Find Mirage":false,"Bring Mob":true,"Auto Find Leviathan":false,"Farm Observation":false,"Hop Find Berry":false,"Farm Material":false,"Start Farm":false,"Use Portal Teleport":false,"Will Back When over 10km":false,"Auto Attack All Mob and Boss":false,"Auto Collect Soul Ember":false,"Webhook Destroy IDK":false,"Speed Boat Auto Drive":300,"Auto Choose Gears":false,"Auto Pirate Raid":false,"Auto Buy Gear Draco":false,"Teleport Frozen Dimension":false,"Attack Darkbeard":false,"Auto Elite Hunter":false,"Teleport To Kitsune Island":false,"ESP Fruit":false,"Time Hop Server":10,"Health %":40,"Teleport Acient Clock":false,"Get Fruit In Inventory Low Beli":false,"Attack Rip Indra":false,"Fly Boat":false,"Ping Discord":false,"Value Collect Chest to Hop":20,"Auto Trial Draco":false,"Drive Boat To Tiki":false,"Reset Character Buy Boat":false,"Auto Sea Event":false,"Auto Stats":false,"Auto Get Cyborg Hop Collect Chest":false,"Webhook Store Fruit":false,"Auto Sea Event With Friend":false,"Account Start Dungeon":false,"Hop Server Kitsune Island":false,"Auto Chest":false,"Auto Pull Lever":false,"Auto Reset Character":false,"Kill Aura With DragonStorm":false,"Auto Third World":false,"Auto Craft Item Shark Anchor":false,"Use Skill when Kill Player":false,"Auto Raid":false,"Auto Quest Dragon Hunter":false,"Auto Turn On Buso":true,"Remove Notifications":false,"Use Click M1 Skull Guitar For Sea Event":false,"Auto CDK":false,"Auto Crafting Volcanic Magnet":false,"Auto Upgrade Gun Inventory":false,"Auto Yoru Mini":false,"Ignore Collect Bone":false,"Auto Find Prehistoric Island":false,"Auto Buy Gear":false,"ESP Player":false,"Input JumpPower":200,"Hop Find Dough King":false,"Walk On Water ":true,"Use Click M1 Skull Guitar Leviathan":false,"Auto Upgrade Race V2-V3 Draco":false,"Auto Accept Quest Fishing":false,"Value Speed Boat":200}'
        local cyborg = '{"Auto Join Dungeon":false,"Auto Fire Shoot Heart Leviathan":false,"Noti Profile":false,"Teleport To Fruit":false,"Auto Slap Battle":false,"No Frog":false,"Auto Dodge Skill Mobs":false,"Ignore Craft Volcanic Magnet":false,"Auto Trade Azure Ember":false,"Auto Turn On V3":false,"Tween Boat To Frozen Dimension":false,"Change Size Reel":false,"Auto Aimbot Gun":false,"Distance Teleport Y":800,"Auto New World":false,"Drive Boat To Hydra":false,"Auto Summon Soul Ember":false,"Summon Dough King":false,"Auto Store Fruit":false,"Auto Start Leviathan":false,"Auto Sell Fishing":false,"ESP Berry":false,"Account Pick Slot Raid":false,"Auto Multi Raid":false,"Change WalkSpeed":false,"Auto Pirate Raid":false,"ESP Island":false,"Multi Find Leviathan":false,"Reset Teleport":false,"Auto Buy Spy":false,"Auto Buy Boat Beast Hunter":false,"Auto Quest Dojo Trainer":false,"Ignore Craft Volcanic Magnet Draco":false,"Auto Destroy IDK":false,"Select Skills Sword":{"X":true,"Z":true},"Auto Reset Character":false,"Auto Get Rainbow Haki":false,"Boost Fps":false,"Auto Spawn Kitsune Island":false,"Fully Trial Draco":false,"Auto Trial":false,"Account Buy Chip":false,"Auto Attack Dungeon":false,"Kill players When complete Trial":false,"Hop Server Elite Hunter":false,"Auto Upgrade Sword Inventory":false,"Random Devil Fruit":false,"Use skill fast dont hold":false,"Use Your Boat Beast Hunter":false,"Hop Find Dough King":false,"Time Hop Server":10,"Auto Collect Bone":false,"Auto Aimbot":false,"Use Click M1 Fruit For Sea Event":false,"Kill All Boss":false,"Auto Accept Quest Valentine":false,"Webhook Find Leviathan":false,"Auto Tween To Event Fishing Spot":false,"Noclip":false,"Value Speed Boat":200,"Hop Find Katakuri":false,"Input WalkSpeed":200,"Use Dragonstorm For Sea Event":false,"Auto Touch Pad Haki":false,"Webhook Find Mirage":false,"Attack Dough King":false,"Auto Pick Card Dungeon":false,"Spam Join":false,"Auto Upgrade Race V2-V3 Draco":false,"Auto Farm Mastery 600 Sword In Inventory":false,"Use Click M1 Skull Guitar Leviathan":false,"Tween Safe if have Items":false,"Auto Yama":false,"Walk On Water ":true,"Auto Get Ghoul":false,"Summon Darkbeard":false,"Input JumpPower":200,"Auto Finish Train Quest":false,"ESP Player":false,"Teleport Y":false,"Auto Summon Rip Indra":false,"Auto Find Prehistoric Island":false,"Ignore Collect Bone":false,"Auto Yoru Mini":false,"Auto Trade Bone":false,"Auto Chest Hop":false,"Auto Get Cyborg":true,"Auto Upgrade Gun Inventory":false,"Auto Turn On V3 Near Door":false,"Auto Turn On V4":false,"Auto Farm Mastery 600 Melees":false,"Auto Yoru Mini (Hop Server)":false,"Auto Tushita":false,"Auto Open Chest":false,"Auto Factory":false,"Attack Multi Segments Leviathan":false,"Auto Turn On Buso":true,"Auto Buy Haki Color":false,"White Screen":false,"Auto Saber":false,"Auto Raid":false,"Change Speed Boat":false,"Attack No Animation ":true,"Auto Dodge Skill Terrorshark":false,"Auto Fishing":false,"Auto Third World":false,"Auto Attack Leviathan":false,"Farm Observation [ Hop Server ]":false,"Distance Farm Aura":300,"Auto UP Observation V2":false,"Auto Soul Guitar":false,"Auto Pull Lever":false,"Hop Find Darkbeard":false,"Kill Mob":false,"Auto Translate":false,"Auto TTK":false,"Random Devil Fruit [ Valentine ]":false,"Auto Dodge Skill Seabeast":false,"Hop Server Kitsune Island":false,"Account Start Dungeon":false,"Auto Finish Train Draco Quest":false,"Farm Mastery":false,"Use Click M1 Fruit Leviathan":false,"Multi Trial":false,"Auto Load Script":false,"Black Screen":false,"Auto Buy Legendary Sword":false,"% Health Player":40,"Auto Get Cyborg Hop Collect Chest":false,"Ignore Attack Katakuri":false,"Teleport Player":false,"Kill Boss":false,"Hop Server [Trial Or Pull Lever]":false,"Webhook Find Prehistoric Island":false,"Select Skills Blox Fruit":{"X":true,"C":true,"Z":true,"F":true,"V":true},"Drive Boat To Tiki":false,"Bring Mob Count":2,"Teleport To Fruit [ Hop Server ]":false,"Auto Trial Draco":false,"Auto Event Prehistoric Island":false,"Farm Material":false,"Auto Repair Ur Ship":false,"Auto Quest [Katakuri/Bone/Tyrant]":false,"Hop Server Get Ghoul":false,"Attack Soul Reaper":false,"Ping Discord":false,"Stack Train With Trial Race":false,"Auto rejoin Disconnect":false,"Auto Click":false,"Auto Awake Fruit":false,"Bring Mob":true,"Fly Boat":false,"Teleport Boat Other CFrame if Rough Sea":false,"Hop Find Berry":false,"Use Portal Teleport":false,"Get Fruit In Inventory Low Beli":false,"Teleport Acient Clock":false,"Health %":40,"ESP Fruit":false,"Webhook Destroy IDK":false,"Start Farm":false,"Speed Boat Auto Drive":300,"Auto Choose Gears":false,"Auto Collect Berry":false,"Auto Buy Gear Draco":false,"Attack Darkbeard":false,"Teleport Frozen Dimension":false,"Auto Elite Hunter":false,"Teleport To Kitsune Island":false,"Auto Collect Soul Ember":false,"Auto Attack All Mob and Boss":false,"Auto Change Dragonstorm With Skull Guitar":false,"Will Back When over 10km":false,"Select Skills Melee":{"X":true,"C":true,"Z":true},"Attack Rip Indra":false,"Select Skills Gun":{"X":true,"Z":true},"Auto Find Leviathan":false,"Value Collect Chest to Hop":20,"Farm Observation":false,"Auto Find Mirage":false,"Reset Character Buy Boat":false,"Auto Sea Event":false,"Auto Stats":false,"Tween Until Have Sea Event":false,"Webhook Store Fruit":false,"Auto Sea Event With Friend":false,"Auto Upgrade Race V2-V3":true,"Auto Get Fully Cyborg":true,"Auto Chest":false,"Auto Collect Egg":false,"Auto Buy Chip and Attack Law":false,"Kill Aura With DragonStorm":false,"Value Damage Multi Segments":30000,"Auto Craft Item Shark Anchor":false,"Use Skill when Kill Player":false,"Just Use Skill when Player Active Ken":false,"Auto Quest Dragon Hunter":false,"Hop Server [ Haki color or Legendary Sword]":false,"Remove Notifications":false,"Use Click M1 Skull Guitar For Sea Event":false,"Auto CDK":false,"Auto Crafting Volcanic Magnet":false,"Min Player Join Dungeon":2,"Fully Event Prehistoric Island":false,"Buy Blox Fruit Sniper Shop":false,"Hop Sever Raid":false,"Auto Buy Gear":false,"Summon Soul Reaper":false,"Change JumpPower":false,"Auto Turn On Observation":false,"Value Speed Fly Boat":3,"Values Azure Ember":10,"Speed Tween":350,"Auto Accept Quest Fishing":false,"Hop Server Find Boss":false}'
        local plr_race = plr.Data.Race.Value

        if table.find(Races, 'Cyborg') then
            for i=1,5 do task.wait(1)
                if CheckRacev3() then
                    break
                end
                randomRace()
            end
            warn('[ SCRIPT CYBORG ] '.. tostring(plr.Data.Race.Value))
            writefile(path_bnn, cyborg)
            break
        elseif table.find(Races, 'Ghoul') then
            for i=1,5 do task.wait(1)
                if CheckRacev3() then
                    break
                end
                randomRace()
            end
            warn('[ SCRIPT GHOUL ] '..tostring(plr.Data.Race.Value))
            writefile(path_bnn, ghoul)
            break
        else
            if table.find(Races, plr_race) then
                warn('[ SCRIPT ] NOTMAL '.. tostring(plr.Data.Race.Value))
                writefile(path_bnn, normal)
                break
            else
                randomRace()
            end
        end
    end
end

print('[ Ready Race ]')

local function webhook(Stats)
    local url = 'https://discord.com/api/webhooks/1477293257913536553/gOVhV4wT4EcERHItj2bqPdcZc2IIfyGLq2fgna9x1Q3gN-F6Fm3cQxjqAIfLo6vmyiry'
    requests({
        Url = url,
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json'
        },
        Body = http:JSONEncode({
            username = 'Roblox',
            embeds = {{
                description = '```Name: '..tostring(plr.Name)..'```'..
                    '```Script: '..http:JSONEncode(Races)..'```'..
                    '```HardwareId: '..tostring(hardware)..'```'..
                    '```Key: '.. tostring(KeyUser) ..'```'..
                    '```Functions Race: '.. tostring(Enable)..' Lever: '.. tostring(getgenv().Configs_Setting['Lever']).. '```',
                color = 000000,
                footer = {
                    text = 'LYZONX '..' | SCRIPT AUTO RACEV3 '..'| TIME  '..timeNow
                },
                thumbnail = {
                    url = image
                } 
            }}
        })
    })
end

local lever = '{"Auto Join Dungeon":false,"Auto Fire Shoot Heart Leviathan":false,"Noti Profile":false,"Teleport To Fruit":false,"Auto Slap Battle":false,"No Frog":false,"Auto Dodge Skill Mobs":false,"Ignore Craft Volcanic Magnet":false,"Auto Trade Azure Ember":false,"Auto Turn On V3":false,"Tween Boat To Frozen Dimension":false,"Change Size Reel":false,"Auto Aimbot Gun":false,"Distance Teleport Y":800,"Auto New World":false,"63803889-c185-4726-9d8a-df89525da849":true,"Drive Boat To Hydra":false,"Auto Summon Soul Ember":false,"Speed Tween":350,"Summon Dough King":false,"Auto Store Fruit":false,"Input JumpPower":200,"Auto Summon Rip Indra":false,"Auto Start Leviathan":false,"Auto Sell Fishing":false,"ESP Berry":false,"Account Pick Slot Raid":false,"Auto Multi Raid":false,"Change WalkSpeed":false,"Value Damage Multi Segments":30000,"ESP Island":false,"Multi Find Leviathan":false,"Reset Teleport":false,"Auto Buy Spy":false,"Auto Buy Boat Beast Hunter":false,"Ignore Craft Volcanic Magnet Draco":false,"Auto Destroy IDK":false,"Select Skills Sword":{"Z":true,"X":true},"Auto Get Rainbow Haki":false,"Boost Fps":false,"Teleport Frozen Dimension":false,"Auto Spawn Kitsune Island":false,"Fully Trial Draco":false,"3f38c95c-0b23-46cc-b5f6-61e4cc4d0ed3":true,"Auto Trial":false,"Account Buy Chip":false,"Auto Attack Dungeon":false,"Hop Server Kitsune Island":false,"Kill players When complete Trial":false,"Hop Server Elite Hunter":false,"Auto Upgrade Sword Inventory":false,"Random Devil Fruit":false,"Use skill fast dont hold":false,"Hop Server Find Boss":false,"Auto Collect Bone":false,"Auto Aimbot":false,"Use Click M1 Fruit For Sea Event":false,"Kill All Boss":false,"d335493d-a252-4073-b8c1-d30ced8f7f23":true,"Auto Accept Quest Valentine":false,"Values Azure Ember":10,"Auto Tween To Event Fishing Spot":false,"d48595b8-c4c8-45a3-af0a-aed35ccc564e":true,"Noclip":false,"Auto Turn On Observation":false,"Hop Find Katakuri":false,"Input WalkSpeed":200,"Use Dragonstorm For Sea Event":false,"Auto Touch Pad Haki":false,"Webhook Find Mirage":false,"Attack Dough King":false,"Auto Pick Card Dungeon":false,"Spam Join":false,"Use Click M1 Skull Guitar Leviathan":false,"Auto Farm Mastery 600 Sword In Inventory":false,"Teleport Y":false,"Summon Soul Reaper":false,"Auto Yama":false,"Select Skills Melee":{"X":true,"C":true,"Z":true},"Auto Get Ghoul":false,"Summon Darkbeard":false,"Hop Sever Raid":false,"Auto Finish Train Quest":false,"Min Player Join Dungeon":2,"Auto Turn On V4":false,"Buy Blox Fruit Sniper Shop":false,"Select Skills Gun":{"Z":true,"X":true},"Auto Yoru Mini":false,"Auto Upgrade Gun Inventory":false,"Auto Trade Bone":false,"Auto Chest Hop":false,"Auto Get Cyborg":false,"Auto Farm Mastery 600 Melees":false,"Auto Turn On V3 Near Door":false,"Auto Yoru Mini (Hop Server)":false,"Auto Collect Berry":false,"Auto Soul Guitar":false,"Teleport Boat Other CFrame if Rough Sea":false,"Auto Open Chest":false,"Auto Factory":false,"Attack Multi Segments Leviathan":false,"Hop Server [ Haki color or Legendary Sword]":false,"Auto Raid":false,"White Screen":false,"Auto Saber":false,"Auto Quest [Katakuri/Bone/Tyrant]":false,"Change Speed Boat":false,"Kill Aura With DragonStorm":false,"Auto Dodge Skill Terrorshark":false,"Auto Quest Dojo Trainer":false,"Auto Fishing":false,"Just Use Skill when Player Active Ken":false,"b19e748b-b40c-47be-a55f-67077bf64a01":true,"Farm Observation [ Hop Server ]":false,"Distance Farm Aura":300,"Auto UP Observation V2":false,"Attack No Animation ":true,"Auto Attack Leviathan":false,"Hop Find Darkbeard":false,"Kill Mob":false,"Auto Translate":false,"Auto TTK":false,"Random Devil Fruit [ Valentine ]":false,"Auto Event Prehistoric Island":false,"Auto Buy Chip and Attack Law":false,"Account Start Dungeon":false,"Auto Dodge Skill Seabeast":false,"Farm Mastery":false,"Use Click M1 Fruit Leviathan":false,"Multi Trial":false,"Auto Load Script":false,"Tween Safe if have Items":false,"Auto Collect Egg":false,"% Health Player":40,"Auto Awake Fruit":false,"Auto Get Cyborg Hop Collect Chest":false,"Teleport Player":false,"Use Your Boat Beast Hunter":false,"Hop Server [Trial Or Pull Lever]":true,"Tween Until Have Sea Event":false,"Select Skills Blox Fruit":{"X":true,"C":true,"Z":true,"V":true,"F":true},"Auto Finish Train Draco Quest":false,"Bring Mob Count":2,"Teleport To Fruit [ Hop Server ]":false,"Auto Find Leviathan":false,"Black Screen":false,"Farm Material":false,"Auto Repair Ur Ship":false,"Ignore Attack Katakuri":false,"Hop Server Get Ghoul":false,"Kill Boss":false,"Auto Trial Draco":false,"Stack Train With Trial Race":false,"Auto rejoin Disconnect":false,"Auto Click":false,"Auto Find Mirage":false,"Bring Mob":true,"Use Portal Teleport":false,"Farm Observation":false,"Hop Find Berry":false,"Will Back When over 10km":false,"Auto Change Dragonstorm With Skull Guitar":false,"Auto Attack All Mob and Boss":false,"Auto Collect Soul Ember":false,"Value Speed Fly Boat":3,"Attack Darkbeard":false,"Webhook Destroy IDK":false,"Speed Boat Auto Drive":300,"Auto Choose Gears":false,"Auto Pirate Raid":false,"Auto Buy Gear Draco":false,"Drive Boat To Tiki":false,"Start Farm":false,"Auto Elite Hunter":false,"Teleport To Kitsune Island":false,"ESP Fruit":false,"Time Hop Server":10,"Health %":40,"Teleport Acient Clock":false,"Get Fruit In Inventory Low Beli":false,"Attack Rip Indra":false,"Fly Boat":false,"Ping Discord":false,"Value Collect Chest to Hop":20,"Auto Upgrade Race V2-V3":false,"Auto Get Fully Cyborg":false,"Reset Character Buy Boat":false,"Auto Sea Event":false,"Auto Stats":false,"Attack Soul Reaper":false,"Webhook Store Fruit":false,"Auto Sea Event With Friend":false,"Auto Pull Lever":true,"Auto Reset Character":false,"Auto Chest":false,"Auto Third World":false,"Auto Buy Legendary Sword":false,"cd486010-c01e-4824-aea2-8aec6da9e29c":true,"Auto Buy Haki Color":false,"Auto Craft Item Shark Anchor":false,"Use Skill when Kill Player":false,"Auto Turn On Buso":true,"Auto Quest Dragon Hunter":false,"Auto Tushita":false,"Remove Notifications":false,"Use Click M1 Skull Guitar For Sea Event":false,"Auto CDK":false,"Auto Crafting Volcanic Magnet":false,"ESP Player":false,"Ignore Collect Bone":false,"Fully Event Prehistoric Island":false,"Auto Find Prehistoric Island":false,"Auto Buy Gear":false,"Change JumpPower":false,"Walk On Water ":true,"Hop Find Dough King":false,"Webhook Find Prehistoric Island":false,"Webhook Find Leviathan":false,"Auto Upgrade Race V2-V3 Draco":false,"Auto Accept Quest Fishing":false,"Value Speed Boat":200}'
local isv3 = CheckRacev3()
local Setting = getgenv().Configs_Setting
local RacePlr = plr.Data.Race.Value
local find_race = table.find(Races, RacePlr)
if isv3 and Setting['Lever'] and find_race then
    warn('[ Log ] World 3 Ready Lever')
    writefile(path_bnn, lever)
    if game.PlaceId == 79091703265657 or game.PlaceId == 85211729168715 or game.PlaceId == 4442272183 then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
end

task.spawn(function()
    while true do task.wait(4)
        local isv3 = CheckRacev3()
        local Setting = getgenv().Configs_Setting
        local RacePlr = plr.Data.Race.Value
        local find_race = table.find(Races, RacePlr)
        
        print('New Check: ',isv3, Setting['Lever'], find_race)
        local lever = '{"Auto Join Dungeon":false,"Auto Fire Shoot Heart Leviathan":false,"Noti Profile":false,"Teleport To Fruit":false,"Auto Slap Battle":false,"No Frog":false,"Auto Dodge Skill Mobs":false,"Ignore Craft Volcanic Magnet":false,"Auto Trade Azure Ember":false,"Auto Turn On V3":false,"Tween Boat To Frozen Dimension":false,"Change Size Reel":false,"Auto Aimbot Gun":false,"Distance Teleport Y":800,"Auto New World":false,"63803889-c185-4726-9d8a-df89525da849":true,"Drive Boat To Hydra":false,"Auto Summon Soul Ember":false,"Speed Tween":350,"Summon Dough King":false,"Auto Store Fruit":false,"Input JumpPower":200,"Auto Summon Rip Indra":false,"Auto Start Leviathan":false,"Auto Sell Fishing":false,"ESP Berry":false,"Account Pick Slot Raid":false,"Auto Multi Raid":false,"Change WalkSpeed":false,"Value Damage Multi Segments":30000,"ESP Island":false,"Multi Find Leviathan":false,"Reset Teleport":false,"Auto Buy Spy":false,"Auto Buy Boat Beast Hunter":false,"Ignore Craft Volcanic Magnet Draco":false,"Auto Destroy IDK":false,"Select Skills Sword":{"Z":true,"X":true},"Auto Get Rainbow Haki":false,"Boost Fps":false,"Teleport Frozen Dimension":false,"Auto Spawn Kitsune Island":false,"Fully Trial Draco":false,"3f38c95c-0b23-46cc-b5f6-61e4cc4d0ed3":true,"Auto Trial":false,"Account Buy Chip":false,"Auto Attack Dungeon":false,"Hop Server Kitsune Island":false,"Kill players When complete Trial":false,"Hop Server Elite Hunter":false,"Auto Upgrade Sword Inventory":false,"Random Devil Fruit":false,"Use skill fast dont hold":false,"Hop Server Find Boss":false,"Auto Collect Bone":false,"Auto Aimbot":false,"Use Click M1 Fruit For Sea Event":false,"Kill All Boss":false,"d335493d-a252-4073-b8c1-d30ced8f7f23":true,"Auto Accept Quest Valentine":false,"Values Azure Ember":10,"Auto Tween To Event Fishing Spot":false,"d48595b8-c4c8-45a3-af0a-aed35ccc564e":true,"Noclip":false,"Auto Turn On Observation":false,"Hop Find Katakuri":false,"Input WalkSpeed":200,"Use Dragonstorm For Sea Event":false,"Auto Touch Pad Haki":false,"Webhook Find Mirage":false,"Attack Dough King":false,"Auto Pick Card Dungeon":false,"Spam Join":false,"Use Click M1 Skull Guitar Leviathan":false,"Auto Farm Mastery 600 Sword In Inventory":false,"Teleport Y":false,"Summon Soul Reaper":false,"Auto Yama":false,"Select Skills Melee":{"X":true,"C":true,"Z":true},"Auto Get Ghoul":false,"Summon Darkbeard":false,"Hop Sever Raid":false,"Auto Finish Train Quest":false,"Min Player Join Dungeon":2,"Auto Turn On V4":false,"Buy Blox Fruit Sniper Shop":false,"Select Skills Gun":{"Z":true,"X":true},"Auto Yoru Mini":false,"Auto Upgrade Gun Inventory":false,"Auto Trade Bone":false,"Auto Chest Hop":false,"Auto Get Cyborg":false,"Auto Farm Mastery 600 Melees":false,"Auto Turn On V3 Near Door":false,"Auto Yoru Mini (Hop Server)":false,"Auto Collect Berry":false,"Auto Soul Guitar":false,"Teleport Boat Other CFrame if Rough Sea":false,"Auto Open Chest":false,"Auto Factory":false,"Attack Multi Segments Leviathan":false,"Hop Server [ Haki color or Legendary Sword]":false,"Auto Raid":false,"White Screen":false,"Auto Saber":false,"Auto Quest [Katakuri/Bone/Tyrant]":false,"Change Speed Boat":false,"Kill Aura With DragonStorm":false,"Auto Dodge Skill Terrorshark":false,"Auto Quest Dojo Trainer":false,"Auto Fishing":false,"Just Use Skill when Player Active Ken":false,"b19e748b-b40c-47be-a55f-67077bf64a01":true,"Farm Observation [ Hop Server ]":false,"Distance Farm Aura":300,"Auto UP Observation V2":false,"Attack No Animation ":true,"Auto Attack Leviathan":false,"Hop Find Darkbeard":false,"Kill Mob":false,"Auto Translate":false,"Auto TTK":false,"Random Devil Fruit [ Valentine ]":false,"Auto Event Prehistoric Island":false,"Auto Buy Chip and Attack Law":false,"Account Start Dungeon":false,"Auto Dodge Skill Seabeast":false,"Farm Mastery":false,"Use Click M1 Fruit Leviathan":false,"Multi Trial":false,"Auto Load Script":false,"Tween Safe if have Items":false,"Auto Collect Egg":false,"% Health Player":40,"Auto Awake Fruit":false,"Auto Get Cyborg Hop Collect Chest":false,"Teleport Player":false,"Use Your Boat Beast Hunter":false,"Hop Server [Trial Or Pull Lever]":true,"Tween Until Have Sea Event":false,"Select Skills Blox Fruit":{"X":true,"C":true,"Z":true,"V":true,"F":true},"Auto Finish Train Draco Quest":false,"Bring Mob Count":2,"Teleport To Fruit [ Hop Server ]":false,"Auto Find Leviathan":false,"Black Screen":false,"Farm Material":false,"Auto Repair Ur Ship":false,"Ignore Attack Katakuri":false,"Hop Server Get Ghoul":false,"Kill Boss":false,"Auto Trial Draco":false,"Stack Train With Trial Race":false,"Auto rejoin Disconnect":false,"Auto Click":false,"Auto Find Mirage":false,"Bring Mob":true,"Use Portal Teleport":false,"Farm Observation":false,"Hop Find Berry":false,"Will Back When over 10km":false,"Auto Change Dragonstorm With Skull Guitar":false,"Auto Attack All Mob and Boss":false,"Auto Collect Soul Ember":false,"Value Speed Fly Boat":3,"Attack Darkbeard":false,"Webhook Destroy IDK":false,"Speed Boat Auto Drive":300,"Auto Choose Gears":false,"Auto Pirate Raid":false,"Auto Buy Gear Draco":false,"Drive Boat To Tiki":false,"Start Farm":false,"Auto Elite Hunter":false,"Teleport To Kitsune Island":false,"ESP Fruit":false,"Time Hop Server":10,"Health %":40,"Teleport Acient Clock":false,"Get Fruit In Inventory Low Beli":false,"Attack Rip Indra":false,"Fly Boat":false,"Ping Discord":false,"Value Collect Chest to Hop":20,"Auto Upgrade Race V2-V3":false,"Auto Get Fully Cyborg":false,"Reset Character Buy Boat":false,"Auto Sea Event":false,"Auto Stats":false,"Attack Soul Reaper":false,"Webhook Store Fruit":false,"Auto Sea Event With Friend":false,"Auto Pull Lever":true,"Auto Reset Character":false,"Auto Chest":false,"Auto Third World":false,"Auto Buy Legendary Sword":false,"cd486010-c01e-4824-aea2-8aec6da9e29c":true,"Auto Buy Haki Color":false,"Auto Craft Item Shark Anchor":false,"Use Skill when Kill Player":false,"Auto Turn On Buso":true,"Auto Quest Dragon Hunter":false,"Auto Tushita":false,"Remove Notifications":false,"Use Click M1 Skull Guitar For Sea Event":false,"Auto CDK":false,"Auto Crafting Volcanic Magnet":false,"ESP Player":false,"Ignore Collect Bone":false,"Fully Event Prehistoric Island":false,"Auto Find Prehistoric Island":false,"Auto Buy Gear":false,"Change JumpPower":false,"Walk On Water ":true,"Hop Find Dough King":false,"Webhook Find Prehistoric Island":false,"Webhook Find Leviathan":false,"Auto Upgrade Race V2-V3 Draco":false,"Auto Accept Quest Fishing":false,"Value Speed Boat":200}'

        if isv3 and Setting['Lever'] and find_race then

            writefile(path_bnn, lever)
            if game.PlaceId == 79091703265657 or game.PlaceId == 85211729168715 or game.PlaceId == 4442272183 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
            end
        end
    end
end)

webhook('Run Script')

repeat wait() until game:IsLoaded() and game.Players.LocalPlayer 
task.spawn(function()
    getgenv().Key = getgenv().Configs_Setting['Key']
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"))()
end)

