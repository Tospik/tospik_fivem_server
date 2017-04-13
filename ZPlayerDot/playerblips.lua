Citizen.CreateThread(function()

	while true do

		Wait( 1 )

		-- show blips
		for id = 0, 64 do

			if NetworkIsPlayerActive( id ) and GetPlayerPed( id ) ~= GetPlayerPed( -1 ) then

				ped = GetPlayerPed( id )
				blip = GetBlipFromEntity( ped )

				-- HEAD DISPLAY STUFF --

				-- Create head display (this is safe to be spammed)
				headId = Citizen.InvokeNative( 0xBFEFE3321A3F5015, ped, ('·'), false, false, "", false )

			end

		end

	end

end)