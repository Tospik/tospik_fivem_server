local weashop = {
	opened = false,
	title = "Armes",
	currentmenu = "main",
	lastmenu = nil,
	currentpos = nil,
	selectedbutton = 0,
	marker = { r = 0, g = 155, b = 255, a = 200, type = 1 },
	menu = {
		x = 0.9,
		y = 0.08,
		width = 0.2,
		height = 0.04,
		buttons = 10,
		from = 1,
		to = 10,
		scale = 0.4,
		font = 0,
		["main"] = {
			title = "CATEGORIES",
			name = "main",
			buttons = {
				{title = "Armes de Cadet", name = "Melee", description = ""},
				{title = "Armes de Brigadier", name = "Pistolets", description = ""},
				{title = "Armes de Lieutenant", name = "MachineGuns", description = ""},
				{title = "Armes de Commissaire", name = "Shotguns", description = ""},
			}
		},
		["Melee"] = {
			title = "Armes de Cadet",
			name = "Melee",
			buttons = {
				
				{title = "Matraque", name = "Nightstick", costs = 0, description = {}, model = "WEAPON_Nightstick"},
			
				{title = "Lampe torche", name = "Flashlight", costs = 0, description = {}, model = "WEAPON_Flashlight"},
				
				{title = "Extincteur", name = "FireExtinguisher", costs = 0, description = {}, model = "WEAPON_FireExtinguisher"},
				
				{title = "Pistolet", name = "Pistol", costs = 0, description = {}, model = "WEAPON_Pistol"},
				
				{title = "Mitraillette légère", name = "MicroSMG", costs = 0, description = {}, model = "WEAPON_MicroSMG"},
			}
		},
		["Pistolets"] = {
			title = "Armes de Brigadier",
			name = "Pistolets",
			buttons = {
				{title = "Matraque", name = "Nightstick", costs = 0, description = {}, model = "WEAPON_Nightstick"},
			
				{title = "Lampe torche", name = "Flashlight", costs = 0, description = {}, model = "WEAPON_Flashlight"},
				
				{title = "Extincteur", name = "FireExtinguisher", costs = 0, description = {}, model = "WEAPON_FireExtinguisher"},
				
				{title = "Pistolet de combat", name = "CombatPistol", costs = 0, description = {}, model = "WEAPON_CombatPistol"},
				
				{title = "Mitraillette", name = "SMG", costs = 0, description = {}, model = "WEAPON_SMG"},
				
				{title = "Fusil à pompe", name = "PumpShotgun", costs = 0, description = {}, model = "WEAPON_PumpShotgun"},
			}
		},
		["MachineGuns"] = {
			title = "Armes de Lieutenant",
			name = "MachineGuns",
			buttons = {
				{title = "Matraque", name = "Nightstick", costs = 0, description = {}, model = "WEAPON_Nightstick"},
			
				{title = "Lampe torche", name = "Flashlight", costs = 0, description = {}, model = "WEAPON_Flashlight"},
				
				{title = "Extincteur", name = "FireExtinguisher", costs = 0, description = {}, model = "WEAPON_FireExtinguisher"},
				
				{title = "Pistolet de combat", name = "CombatPistol", costs = 0, description = {}, model = "WEAPON_CombatPistol"},
				
				{title = "Carabine", name = "CarbineRifle", costs = 0, description = {}, model = "WEAPON_CarbineRifle"},
				
				{title = "Fusil à pompe", name = "PumpShotgun", costs = 0, description = {}, model = "WEAPON_PumpShotgun"},
				
				{title = "Fusil de précision", name = "SniperRifle", costs = 0, description = {}, model = "WEAPON_SniperRifle"},
			}
		},
		["Shotguns"] = {
			title = "Armes de Commissaire",
			name = "Shotguns",
			buttons = {
				 {title = "Matraque", name = "Nightstick", costs = 0, description = {}, model = "WEAPON_Nightstick"},
			
				{title = "Lampe torche", name = "Flashlight", costs = 0, description = {}, model = "WEAPON_Flashlight"},
				
				{title = "Extincteur", name = "FireExtinguisher", costs = 0, description = {}, model = "WEAPON_FireExtinguisher"},
				
				{title = "Pistolet de combat", name = "CombatPistol", costs = 0, description = {}, model = "WEAPON_CombatPistol"},
				
				{title = "Fusil améliore", name = "AdvancedRifle", costs = 0, description = {}, model = "WEAPON_AdvancedRifle"},
				
				{title = "Fusil à pompe", name = "PumpShotgun", costs = 0, description = {}, model = "WEAPON_PumpShotgun"},
				
				{title = "Fusil de précision lourd", name = "HeavySniper", costs = 0, description = {}, model = "WEAPON_HeavySniper"},
				
				
			}
		},
		["AssaultRifles"] = {
			title = "Fusils assaut",
			name = "AssaultRifles",
			buttons = {
				{title = "Fusil Assaut", name = "AssaultRifle", costs = 250000, description = {}, model = "WEAPON_AssaultRifle"},
				{title = "Carabine", name = "CarbineRifle", costs = 250000, description = {}, model = "WEAPON_CarbineRifle"},
				{title = "Fusil ameliore", name = "AdvancedRifle", costs = 300000, description = {}, model = "WEAPON_AdvancedRifle"},
				{title = "Carabine speciale", name = "SpecialCarbine", costs = 310000, description = {}, model = "WEAPON_SpecialCarbine"},
				{title = "Fusil d'assaut Bullpup", name = "BullpupRifle", costs = 350000, description = {}, model = "WEAPON_BullpupRifle"},
				{title = "Fusil compact", name = "CompactRifle", costs = 400000, description = {}, model = "WEAPON_CompactRifle"},
			}
		},
		["SniperRifles"] = {
			title = "Fusils sniper",
			name = "SniperRifles",
			buttons = {
				{title = "Fusil de precision", name = "SniperRifle", costs = 500000, description = {}, model = "WEAPON_SniperRifle"},
				{title = "Fusil de precision lourd", name = "HeavySniper", costs = 800000, description = {}, model = "WEAPON_HeavySniper"},
				{title = "Fusil a lunette", name = "MarksmanRifle", costs = 1000000, description = {}, model = "WEAPON_MarksmanRifle"},
			}
		},
		["ThrownWeapons"] = {
			title = "Grenades",
			name = "ThrownWeapons",
			buttons = {
				{title = "Grenade", name = "Grenade", costs = 1500, description = {}, model = "WEAPON_Grenade"},
				{title = "Mine collante", name = "StickyBomb", costs = 15500, description = {}, model = "WEAPON_StickyBomb"},
				{title = "Mine de proximite", name = "ProximityMine", costs = 250000, description = {}, model = "WEAPON_ProximityMine"},
				{title = "Grenade lacrymogene", name = "BZGas", costs = 1800, description = {}, model = "WEAPON_BZGas"},
				{title = "Molotov", name = "Molotov", costs = 85000, description = {}, model = "WEAPON_Molotov"},
				{title = "Extincteur", name = "FireExtinguisher", costs = 3000, description = {}, model = "WEAPON_FireExtinguisher"},
				{title = "Fuel", name = "PetrolCan", costs = 120000, description = {}, model = "WEAPON_PetrolCan"},
				{title = "Torche eclairante", name = "Flare", costs = 12000, description = {}, model = "WEAPON_Flare"},
				{title = "Balle", name = "Ball", costs = 120, description = {}, model = "WEAPON_Ball"},
				{title = "Boule de neige", name = "Snowball", costs = 120, description = {}, model = "WEAPON_Snowball"},
				{title = "Fumigene", name = "SmokeGrenade", costs = 12000, description = {}, model = "WEAPON_SmokeGrenade"},
				--{title = "Bombe artisanale", name = "Pipebomb", costs = 3000, description = {}, model = "WEAPON_Pipebomb"},
			}
		},
	}
}

local fakeWeapon = ''
local weashop_locations = {
{entering = {452.214233398438,-980.225402832031,29.6895847320557}, inside = {452.214233398438,-980.225402832031,29.6895847320557}, outside = {452.214233398438,-980.225402832031,29.6895847320557}},
}

local weashop_blips ={}
local inrangeofweashop = false
local currentlocation = nil
local boughtWeapon = false

local function LocalPed()
return GetPlayerPed(-1)
end

function drawTxt(text,font,centre,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0,255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(centre)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x , y)
end

function IsPlayerInRangeOfweashop()
return inrangeofweashop
end

function ShowWeashopBlips(bool)
	if bool and #weashop_blips == 0 then
		for station,pos in pairs(weashop_locations) do
			local loc = pos
			pos = pos.entering
			--local blip = AddBlipForCoord(pos[1],pos[2],pos[3])
			-- 60 58 137
			--SetBlipSprite(blip,0)
			--BeginTextCommandSetBlipName("STRING")
			--AddTextComponentString('Armurerie')
			--EndTextCommandSetBlipName(blip)
			SetBlipAsShortRange(blip,true)
			SetBlipAsMissionCreatorBlip(blip,true)
			table.insert(weashop_blips, {blip = blip, pos = loc})
		end
		Citizen.CreateThread(function()
			while #weashop_blips > 0 do
				Citizen.Wait(0)
				local inrange = false
				for i,b in ipairs(weashop_blips) do
					if IsPlayerWantedLevelGreater(GetPlayerIndex(),0) == false and weashop.opened == false and IsPedInAnyVehicle(LocalPed(), true) == false and  GetDistanceBetweenCoords(b.pos.entering[1],b.pos.entering[2],b.pos.entering[3],GetEntityCoords(LocalPed())) < 2 then
						DrawMarker(1,b.pos.entering[1],b.pos.entering[2],b.pos.entering[3],0,0,0,0,0,0,1.001,1.0001,0.5001,249,39,39,200,0,0,0,0)
						drawTxt('Appuyez sur ~g~ENTRER~s~ pour vous ~b~équiper ',0,1,0.5,0.8,0.6,255,255,255,255)
						currentlocation = b
						inrange = true
					end
				end
				inrangeofweashop = inrange
			end
		end)
	elseif bool == false and #weashop_blips > 0 then
		for i,b in ipairs(weashop_blips) do
			if DoesBlipExist(b.blip) then
				SetBlipAsMissionCreatorBlip(b.blip,false)
				Citizen.InvokeNative(0x86A652570E5F25DD, Citizen.PointerValueIntInitialized(b.blip))
			end
		end
		weashop_blips = {}
	end
end

function f(n)
	return n + 0.0001
end

function LocalPed()
	return GetPlayerPed(-1)
end

function try(f, catch_f)
	local status, exception = pcall(f)
	if not status then
		catch_f(exception)
	end
end

function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

--local veh = nil
function OpenCreator()
	boughtWeapon = false
	local ped = GetPlayerPed(-1)
	local pos = currentlocation.pos.inside
	FreezeEntityPosition(ped,true)
	SetEntityVisible(ped,true)
	--local g = Citizen.InvokeNative(0xC906A7DAB05C8D2B,pos[1],pos[2],pos[3],Citizen.PointerValueFloat(),0)
	--SetEntityCoords(ped,pos[1],pos[2],g)
	--SetEntityHeading(ped,pos[4])
	weashop.currentmenu = "main"
	weashop.opened = true
	weashop.selectedbutton = 0
end

function CloseCreator()
	Citizen.CreateThread(function()
		local ped = GetPlayerPed(-1)
		if not boughtWeapon then
			local pos = currentlocation.pos.entering
			SetEntityCoords(ped,pos[1],pos[2],pos[3])
			FreezeEntityPosition(ped,false)
			SetEntityVisible(ped,true)
			weashop.opened = false
			weashop.menu.from = 1
			weashop.menu.to = 10
		else
			--Citizen.Trace("Weapon"..fakeWeapon)
			local pos = currentlocation.pos.entering
			local hash = GetHashKey(fakeWeapon)
			GiveWeaponToPed(ped, hash, 1000, 0, false)
		end
	end)
end

function drawMenuButton(button,x,y,selected)
	local menu = weashop.menu
	SetTextFont(menu.font)
	SetTextProportional(0)
	SetTextScale(menu.scale, menu.scale)
	if selected then
		SetTextColour(0, 0, 0, 255)
	else
		SetTextColour(255, 255, 255, 255)
	end
	SetTextCentre(0)
	SetTextEntry("STRING")
	AddTextComponentString(button.title)
	if selected then
		DrawRect(x,y,menu.width,menu.height,255,255,255,255)
	else
		DrawRect(x,y,menu.width,menu.height,0,0,0,150)
	end
	DrawText(x - menu.width/2 + 0.005, y - menu.height/2 + 0.0028)
end

function drawMenuInfo(text)
	local menu = weashop.menu
	SetTextFont(menu.font)
	SetTextProportional(0)
	SetTextScale(0.45, 0.45)
	SetTextColour(255, 255, 255, 255)
	SetTextCentre(0)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawRect(0.675, 0.95,0.65,0.050,0,0,0,150)
	DrawText(0.365, 0.934)
end

function drawMenuRight(txt,x,y,selected)
	local menu = weashop.menu
	SetTextFont(menu.font)
	SetTextProportional(0)
	SetTextScale(menu.scale, menu.scale)
	SetTextRightJustify(1)
	if selected then
		SetTextColour(0, 0, 0, 255)
	else
		SetTextColour(255, 255, 255, 255)
	end
	SetTextCentre(0)
	SetTextEntry("STRING")
	AddTextComponentString(txt)
	DrawText(x + menu.width/2 - 0.03, y - menu.height/2 + 0.0028)
end

function drawMenuTitle(txt,x,y)
local menu = weashop.menu
	SetTextFont(2)
	SetTextProportional(0)
	SetTextScale(0.5, 0.5)
	SetTextColour(255, 255, 255, 255)
	SetTextEntry("STRING")
	AddTextComponentString(txt)
	DrawRect(x,y,menu.width,menu.height,0,0,0,150)
	DrawText(x - menu.width/2 + 0.005, y - menu.height/2 + 0.0028)
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function Notify(text)
SetNotificationTextEntry('STRING')
AddTextComponentString(text)
DrawNotification(false, false)
end

function DoesPlayerHaveWeapon(model,button,y,selected, source)
		local t = false
		local hash = GetHashKey(model)
		--t = HAS_PED_GOT_WEAPON(source,hash,false) --Check if player already has selected weapon !!!! THIS DOES NOT WORK !!!!!
		if t then
			drawMenuRight("OWNED",weashop.menu.x,y,selected)
		--else
			drawMenuRight(button.costs.." €",weashop.menu.x,y,selected)
		end
end

local backlock = false
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(1,201) and IsPlayerInRangeOfweashop() then
			if weashop.opened then
				CloseCreator()
			else
				OpenCreator()
			end
		end
		if weashop.opened then
			local ped = LocalPed()
			local menu = weashop.menu[weashop.currentmenu]
			drawTxt(weashop.title,1,1,weashop.menu.x,weashop.menu.y,1.0, 255,255,255,255)
			drawMenuTitle(menu.title, weashop.menu.x,weashop.menu.y + 0.08)
			drawTxt(weashop.selectedbutton.."/"..tablelength(menu.buttons),0,0,weashop.menu.x + weashop.menu.width/2 - 0.0385,weashop.menu.y + 0.067,0.4, 255,255,255,255)
			local y = weashop.menu.y + 0.12
			buttoncount = tablelength(menu.buttons)
			local selected = false

			for i,button in pairs(menu.buttons) do
				if i >= weashop.menu.from and i <= weashop.menu.to then

					if i == weashop.selectedbutton then
						selected = true
					else
						selected = false
					end
					drawMenuButton(button,weashop.menu.x,y,selected)
					if button.costs ~= nil then
						DoesPlayerHaveWeapon(button.model,button,y,selected,ped)
					end
					y = y + 0.04
					if selected and IsControlJustPressed(1,201) then
						ButtonSelected(button)
					end
				end
			end
		end
		if weashop.opened then
			if IsControlJustPressed(1,202) then
				Back()
			end
			if IsControlJustReleased(1,202) then
				backlock = false
			end
			if IsControlJustPressed(1,188) then
				if weashop.selectedbutton > 1 then
					weashop.selectedbutton = weashop.selectedbutton -1
					if buttoncount > 10 and weashop.selectedbutton < weashop.menu.from then
						weashop.menu.from = weashop.menu.from -1
						weashop.menu.to = weashop.menu.to - 1
					end
				end
			end
			if IsControlJustPressed(1,187)then
				if weashop.selectedbutton < buttoncount then
					weashop.selectedbutton = weashop.selectedbutton +1
					if buttoncount > 10 and weashop.selectedbutton > weashop.menu.to then
						weashop.menu.to = weashop.menu.to + 1
						weashop.menu.from = weashop.menu.from + 1
					end
				end
			end
		end

	end
end)

function round(num, idp)
  if idp and idp>0 then
    local mult = 10^idp
    return math.floor(num * mult + 0.5) / mult
  end
  return math.floor(num + 0.5)
end

function ButtonSelected(button)
	local ped = GetPlayerPed(-1)
	local this = weashop.currentmenu
	local btn = button.name
	if this == "main" then
		if btn == "Melee" then
			OpenMenu('Melee')
		elseif btn == "Pistolets" then
			OpenMenu('Pistolets')
		elseif btn == "MachineGuns" then
			OpenMenu('MachineGuns')
		elseif btn == "Shotguns" then
			OpenMenu('Shotguns')
		elseif btn == "AssaultRifles" then
			OpenMenu('AssaultRifles')
		elseif btn == "SniperRifles" then
			OpenMenu('SniperRifles')
		elseif btn == "ThrownWeapons" then
			OpenMenu('ThrownWeapons')
		end
	else
		fakeWeapon = button.model
		TriggerServerEvent('CheckMoneyForWea',button.model,button.costs)
	end
end

RegisterNetEvent('FinishMoneyCheckForWea')
AddEventHandler('FinishMoneyCheckForWea', function()
	boughtWeapon = true
	CloseCreator()
end)

RegisterNetEvent('ToManyWeapons')
AddEventHandler('ToManyWeapons', function()
	boughtWeapon = false
	CloseCreator()
end)

function OpenMenu(menu)
	weashop.lastmenu = weashop.currentmenu
	weashop.menu.from = 1
	weashop.menu.to = 10
	weashop.selectedbutton = 0
	weashop.currentmenu = menu
end

function Back()
	if backlock then
		return
	end
	backlock = true
	if weashop.currentmenu == "main" then
		boughtWeapon = false
		CloseCreator()
	else
		OpenMenu(weashop.lastmenu)
	end

end

function stringstarts(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end

local firstspawn = 0
AddEventHandler('playerSpawned', function(spawn)
if firstspawn == 0 then
	ShowWeashopBlips(true)
	firstspawn = 1
end
TriggerServerEvent("weaponshop:playerSpawned", spawn)
end)

RegisterNetEvent('giveWeapon')
AddEventHandler('giveWeapon', function(name, delay)
	Citizen.CreateThread(function()
		local weapon = GetHashKey(name)
        Wait(delay)
        local hash = GetHashKey(name)
        GiveWeaponToPed(GetPlayerPed(-1), weapon, 1000, 0, false)
    end)
end)
