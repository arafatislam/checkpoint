script_name("Riddler++")
script_author("Arafat")
script_version("2")

require "moonloader"
require "sampfuncs"
local https = require "ssl.https"
local http = require "socket.http"
local dlstatus = require("moonloader").download_status
local sampev = require "lib.samp.events"
local encoding = require "encoding"
encoding.default = 'CP1251'
u8 = encoding.UTF8

local array = {
  50, 1940, 9199,
}

local script_path = thisScript().path
local script_url = "https://github.com/arafatislam/checkpoint/raw/main/Riddler.lua"



function main()
	while not isSampAvailable() do wait(50) end
	sampfuncsLog("(SA:MP Squad Riddler++) Authors: " .. table.concat(thisScript().authors, ", ") .. ",  Version: " .. thisScript().version)
	while true do
        if testCheat('LLLLL') then
		
			setRaceTrackMarker01(2, array[1]+13, array[2], array[3], 3, -1) -- start 1

			sampAddChatMessage("{FFFFFF}[ {6600FF}Riddler++ {FFFFFF} ] {FFFFFF}Go GO GO.....", -1)
        end
		wait(0)
	end
end

sampRegisterChatCommand("/crmt11", function()
  sampAddChatMessage("{FFFFFF}[ {6600FF}Riddler++ {FFFFFF} ] {FFFFFF}Your last checkpoint has been Distroyed", -1)
  thisScript():reload ()
end)

sampRegisterChatCommand("/RiddlerUpdate", function()
  update_script()
end)

-- ======================[ Race Track 1 ]====================== -- 

function setRaceTrackMarker01(type, x, y, z, radius, color)
    lua_thread.create(function()
    repeat
        wait(0)
        local x1, y1, z1 = getCharCoordinates(PLAYER_PED)
        until getDistanceBetweenCoords3d(x, y, z, x1, y1, z1) < radius
        addOneOffSound(0, 0, 0, 1149)
		setRaceTrackMarker02(2, 58, 1953, 9195, 1, -1) -- check 2
		wait(500)
		sampAddChatMessage("{ff0000}setRaceTrackMarker01", -1)
    end)
end

function setRaceTrackMarker02(type, x, y, z, radius, color)
    lua_thread.create(function()
    repeat
        wait(0)
        local x1, y1, z1 = getCharCoordinates(PLAYER_PED)
        until getDistanceBetweenCoords3d(x, y, z, x1, y1, z1) < radius
        addOneOffSound(0, 0, 0, 1149)
		setRaceTrackMarker03(2, 62, 1969, 9195, 1, -1) -- check 2
		wait(500)
		sampAddChatMessage("{ff0000}setRaceTrackMarker02", -1)
    end)
end

function setRaceTrackMarker03(type, x, y, z, radius, color)
    lua_thread.create(function()
    repeat
        wait(0)
        local x1, y1, z1 = getCharCoordinates(PLAYER_PED)
        until getDistanceBetweenCoords3d(x, y, z, x1, y1, z1) < radius
        addOneOffSound(0, 0, 0, 1149)
		wait(500)
		sampAddChatMessage("{ff0000}setRaceTrackMarker03", -1)
    end)
end


-- ======================[ Race Track 1 ]====================== -- 
function update_script()
	downloadUrlToFile(script_url, script_path, function(id, status)
		if status == dlstatus.STATUS_ENDDOWNLOADDATA then
			sampAddChatMessage(string.format("{ABB2B9}[%s]{FFFFFF} The update was successful! [%s]", thisScript().name, thisScript().version), -1)
		end
	end)
end
