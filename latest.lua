script_name("Checkpointssss++")
script_author("Arafat, Adib & Salman")


require "moonloader"
require "sampfuncs"
local sampev = require "lib.samp.events"
local imgui = require "imgui"
local key = require "vkeys"
local inicfg = require "inicfg"
local encoding = require "encoding"
encoding.default = "CP1251"
u8 = encoding.UTF8

script_version("1.2")
local dlstatus = require('moonloader').download_status
local https = require "ssl.https"



dir = getWorkingDirectory() .. "\\config\\Arafat's Config\\"
dir2 = getWorkingDirectory() .. "\\config\\"
config = dir .. "Checkpoint.ini"

if not doesDirectoryExist(dir2) then
    createDirectory(dir2)
end
if not doesDirectoryExist(dir) then
    createDirectory(dir)
end
if not doesFileExist(config) then
    file = io.open(config, "w")
    file:write(" ")
    file:close()
    local directIni = config
    local mainIni =
        inicfg.load(
        inicfg.load(
            {
                customone = {
                    cx = 1791,
                    cy = -1916,
                    cz = 13
                },
                customtwo = {
                    cx = 1791,
                    cy = -1916,
                    cz = 13
                },
                customthree = {
                    cx = 1791,
                    cy = -1916,
                    cz = 13
                },
                customfour = {
                    cx = 1791,
                    cy = -1916,
                    cz = 13
                }
            },
            directIni
        )
    )

    inicfg.save(mainIni, directIni)
end

local directIni = config
local mainIni = inicfg.load(nil, directIni)
inicfg.save(mainIni, directIni)

local script_path = thisScript().path
local script_url = "https://raw.githubusercontent.com/akacross/hud/main/hud.lua"
local update_url = "https://raw.githubusercontent.com/arafatislam/chekpoint/main/version.txt"
local update = false

--============================= FactionHQ =================================
FactionHQ_LSPD_posX, FactionHQ_LSPD_posY, FactionHQ_LSPD_posZ = 1534.7067871094, -1671.9627685547, 13.3828125
FactionHQ_LSFMD_posX, FactionHQ_LSFMD_posY, FactionHQ_LSFMD_posZ = 1603.2939453125, -2164.7243652344, 13.5546875
FactionHQ_FBI_posX, FactionHQ_FBI_posY, FactionHQ_FBI_posZ = 332.92239379883, -1520.7593994141, 35.8671875
FactionHQ_ARES_posX, FactionHQ_ARES_posY, FactionHQ_ARES_posZ = 2819.94140625, -1086.3577880859, 30.731147766113
FactionHQ_SANews_posX, FactionHQ_SANews_posY, FactionHQ_SANews_posZ = 645.19818115234, -1358.0230712891, 13.574055671692

--=============================== Gangs ====================================

Gang01_posX, Gang01_posY, Gang01_posZ = 1791.4611816406, -1916.0142822266, 13.394514083862
Gang02_posX, Gang02_posY, Gang02_posZ = 2518.3576660156, -1661.8688964844, 14.267756462097
Gang03_posX, Gang03_posY, Gang03_posZ = 1032.7055664063, -1119.0172119141, 23.890197753906
Gang04_posX, Gang04_posY, Gang04_posZ = 1770.5882568359, -1666.9914550781, 14.418422698975
Gang05_posX, Gang05_posY, Gang05_posZ = 2476.8796386719, -1350.4541015625, 27.307434082031
Gang06_posX, Gang06_posY, Gang06_posZ = 1567.9382324219, -1892.7965087891, 13.640942573547
Gang07_posX, Gang07_posY, Gang07_posZ = 1929.6270751953, -1919.5119628906, 15.022641181946
Gang08_posX, Gang08_posY, Gang08_posZ = 477.96212768555, -1490.2103271484, 20.255447387695
Gang09_posX, Gang09_posY, Gang09_posZ = 2489.7592773438, -1948.4810791016, 13.468914031982
Gang10_posX, Gang10_posY, Gang10_posZ = 1523, -1183, 24

--=============================== Hospitals ====================================
Hospitals_AllSaints_posX, Hospitals_AllSaints_posY, Hospitals_AllSaints_posZ = 1183.6365966797, -1323.3647460938, 13.576376914978
Hospitals_County_posX, Hospitals_County_posY, Hospitals_County_posZ = 2029.6707763672, -1419.1712646484, 16.9921875

--=============================== Material ====================================
Mat_MP1_posX, Mat_MP1_posY, Mat_MP1_posZ = 1422.9255371094, -1328.1730957031, 13.565899848938
Mat_MP2_posX, Mat_MP2_posY, Mat_MP2_posZ = 2378.2395019531, -2014.3996582031, 14.832948684692
Mat_MP3_posX, Mat_MP3_posY, Mat_MP3_posZ = 2153.0695800781, -106.28032684326, 2.6201519966125
Mat_Air_posX, Mat_Air_posY, Mat_Air_posZ = 1448.5347900391, -2595.8979492188, 13.546875
Mat_MF1_posX, Mat_MF1_posY, Mat_MF1_posZ = 2185.0668945313, -2277.724609375, 13.546875
Mat_MF2_posX, Mat_MF2_posY, Mat_MF2_posZ = 2286.7424316406, -1116.8098144531, 37.9765625

--=============================== Airport =====================================
Airport_LSI_posX, Airport_LSI_posY, Airport_LSI_posZ = 1962.0627441406, -2194.9895019531, 13.546875
Airport_SF_posX, Airport_SF_posY, Airport_SF_posZ = -1765.6165771484, -579.73895263672, 16.3359375
Airport_LV_posX, Airport_LV_posY, Airport_LV_posZ = 1691.6040039063, 1449.1240234375, 10.765430450439
Airport_Graveyard_posX, Airport_Graveyard_posY, Airport_Graveyard_posZ = 396.25811767578, 2515.3256835938, 16.484375


--=============================== Church =====================================
Church_LM_posX, Church_LM_posY, Church_LM_posZ = 1720.5867919922, -1739.109375, 13.546875
Church_Jefferson_posX, Church_Jefferson_posY, Church_Jefferson_posZ = 2230.2875976563, -1333.6235351563, 23.981641769409
Church_Palomino_posX, Church_Palomino_posY, Church_Palomino_posZ = 2256.7060546875, -44.043262481689, 26.683433532715
Church_LePetite_posX, Church_LePetite_posY, Church_LePetite_posZ = -1980.8226318359, 1117.3551025391, 53.123874664307


--=============================== Bank =====================================
Bank_LS_posX, Bank_LS_posY, Bank_LS_posZ = 1459.7945556641, -1026.1290283203, 23.828125
Bank_Rodeo_posX, Bank_Rodeo_posY, Bank_Rodeo_posZ = 591.01403808594, -1244.2692871094, 17.990085601807
Bank_Palomino_posX, Bank_Palomino_posY, Bank_Palomino_posZ = 591.01403808594, -1244.2692871094, 17.990085601807
Bank_SF_posX, Bank_SF_posY, Bank_SF_posZ = -1581.2916259766, 862.22180175781, 7.4494361877441

--=========================== Pay 'N' Spray =================================
Spray_ls_Maria_posX, Spray_ls_Maria_posY, Spray_ls_Maria_posZ = 488.552734375, -1730.6936035156, 11.268116950989



local Checkpoint_Window = imgui.ImBool(false)
local infoWindow = imgui.ImBool(false)
local fsFont = nil
local jsfont = nil
local modfont = nil


function imgui.BeforeDrawFrame()
    if fsFont == nil then
        fsFont =
            imgui.GetIO().Fonts:AddFontFromFileTTF(
            getFolderPath(0x14) .. "\\trebucbd.ttf",
            30.0,
            nil,
            imgui.GetIO().Fonts:GetGlyphRangesCyrillic()
        )
    end
    if jsfont == nil then
        jsfont =
            imgui.GetIO().Fonts:AddFontFromFileTTF(
            getFolderPath(0x14) .. "\\trebucbd.ttf",
            20.0,
            nil,
            imgui.GetIO().Fonts:GetGlyphRangesCyrillic()
        )
    end
    if modfont == nil then
        modfont =
            imgui.GetIO().Fonts:AddFontFromFileTTF(
            getFolderPath(0x14) .. "\\trebucbd.ttf",
            19.0,
            nil,
            imgui.GetIO().Fonts:GetGlyphRangesCyrillic()
        )
    end
end

function imgui.OnDrawFrame()
    if Checkpoint_Window.v then
        imgui.ShowCursor = true
        imgui.SetNextWindowSize(imgui.ImVec2(320, 360), imgui.Cond.FirstUseEver)
        if not window_pos then
            ScreenX, ScreenY = getScreenResolution()
            imgui.SetNextWindowPos(
                imgui.ImVec2(ScreenX / 1.2, ScreenY / 2),
                imgui.Cond.FirsUseEver,
                imgui.ImVec2(0.5, 0.5)
            )
            window_pos = true
        end
        imgui.Begin(
            "CheckPoint++",
            Checkpoint_Window,
            imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse + imgui.WindowFlags.NoScrollbar
        )
        imgui.BeginChild("child", imgui.ImVec2(310, 330), true)
        -- imgui.Text("General") --General
        if imgui.Button("Clear", imgui.ImVec2(95, 30)) then
            deleteCheckpoint(marker)
            removeBlip(checkpoint)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}Did you know you can also use {00FF00}/ccp {FFFFFF}to remove checkpoint?",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Credits", imgui.ImVec2(95, 30)) then
            sampAddChatMessage("{FFFFFF} ---> {7700FF}Checkpoint++{FFFFFF} <---", -1)
            sampAddChatMessage(
                "{FF0000} Developer: {F0FF00}Arafat N Uzumaki (Arafat#0502){FFFFFF},{F0FF00} Adib (Adib23704#8947) {FFFFFF}&{F0FF00} Salman (autocorrect#7700)",
                -1
            )
            imgui.Text("")
        end
        imgui.SameLine()
        if imgui.Button("Info", imgui.ImVec2(95, 30)) then
            infoWindow.v = not infoWindow.v
        end
		
		
        if imgui.Button("update", imgui.ImVec2(95, 30)) then
			printStringNow('Updating!', 1000)
			update()
        end
		
        imgui.Text("                     ")
        --imgui.SameLine()
        -- imgui.Text("Custom Locations") --General
	if imgui.CollapsingHeader(u8"Custom Locations") then
        -- ====================================================================
        if imgui.Button("Set###custom1", imgui.ImVec2(70, 30)) then
            local px, py, pz = getCharCoordinates(playerPed)
            mainIni.customone.cx = px
            mainIni.customone.cy = py
            mainIni.customone.cz = pz
            inicfg.save(mainIni, directIni)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}Your current location has been saved To {7700FF}Custom Location One",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Set###custom2", imgui.ImVec2(70, 30)) then
            local px, py, pz = getCharCoordinates(playerPed)
            mainIni.customtwo.cx = px
            mainIni.customtwo.cy = py
            mainIni.customtwo.cz = pz
            inicfg.save(mainIni, directIni)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}Your current location has been saved To {7700FF}Custom Location Two",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Set###custom3", imgui.ImVec2(70, 30)) then
            local px, py, pz = getCharCoordinates(playerPed)
            mainIni.customthree.cx = px
            mainIni.customthree.cy = py
            mainIni.customthree.cz = pz
            inicfg.save(mainIni, directIni)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}Your current location has been saved To {7700FF}Custom Location Three",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Set###custom4", imgui.ImVec2(70, 30)) then
            local px, py, pz = getCharCoordinates(playerPed)
            mainIni.customfour.cx = px
            mainIni.customfour.cy = py
            mainIni.customfour.cz = pz
            inicfg.save(mainIni, directIni)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}Your current location has been saved To {7700FF}Custom Location Four",
                -1
            )
        end
        --imgui.SameLine()
        if imgui.Button("One", imgui.ImVec2(70, 30)) then
            setMarker(2, mainIni.customone.cx, mainIni.customone.cy, mainIni.customone.cz, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to Your {7700FF}Custom Location One{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Two", imgui.ImVec2(70, 30)) then
            setMarker(2, mainIni.customtwo.cx, mainIni.customtwo.cy, mainIni.customtwo.cz, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to Your {7700FF}Custom Location Two{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Three", imgui.ImVec2(70, 30)) then
            setMarker(2, mainIni.customthree.cx, mainIni.customthree.cy, mainIni.customthree.cz, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to Your {7700FF}Custom Location Three{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Four", imgui.ImVec2(70, 30)) then
            setMarker(2, mainIni.customfour.cx, mainIni.customfour.cy, mainIni.customfour.cz, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to Your {7700FF}Custom Location Four{FFFFFF} has been set.",
                -1
            )
        end
	end

        -- ====================================================================
        --imgui.SameLine()
        -- imgui.Text("Faction HQ") --Faction HQ
	if imgui.CollapsingHeader(u8"Faction HQ") then
        if imgui.Button("LSPD", imgui.ImVec2(70, 30)) then
            setMarker(2, FactionHQ_LSPD_posX, FactionHQ_LSPD_posY, FactionHQ_LSPD_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Los Santos Police Department (LSPD){FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("LSFMD", imgui.ImVec2(70, 30)) then
            setMarker(2, FactionHQ_LSFMD_posX, FactionHQ_LSFMD_posY, FactionHQ_LSFMD_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Los Santos Fire & Medical Department (LSFMD){FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("FBI", imgui.ImVec2(70, 30)) then
            setMarker(2, FactionHQ_FBI_posX, FactionHQ_FBI_posY, FactionHQ_FBI_posZ, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Federal Bureau of Investigation (FBI){FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("ARES", imgui.ImVec2(70, 30)) then
            setMarker(2, FactionHQ_ARES_posX, FactionHQ_ARES_posY, FactionHQ_ARES_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}ARES Defence Solutions (ARES){FFFFFF} has been set.",
                -1
            )
        end
        --imgui.SameLine()
        if imgui.Button("SANews", imgui.ImVec2(70, 30)) then
            setMarker(2, FactionHQ_SANews_posX, FactionHQ_SANews_posY, FactionHQ_SANews_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}San Andreas News (SANews){FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("HMA", imgui.ImVec2(70, 30)) then
            sampAddChatMessage("{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FF0000}Shush.... Its confidential.", -1)
        end
	end
        --imgui.SameLine()
        -- imgui.Text("Gangs HQ (last updated on january 9th, 2022)") --Gang HQ
	if imgui.CollapsingHeader(u8"Gangs HQ (last updated on january 9th, 2022)") then
        -- ==== 01 ====
        if imgui.Button("01", imgui.ImVec2(55, 30)) then
            setMarker(2, Gang01_posX, Gang01_posY, Gang01_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {660005}vacant{FFFFFF} has been set.",
                -1
            )
        end
        imgui.Hint("vacant", -1)
        -- ==== 02 ====
        imgui.SameLine()
        if imgui.Button("02", imgui.ImVec2(55, 30)) then
            setMarker(2, Gang02_posX, Gang02_posY, Gang02_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {006400}Grove Street Families{FFFFFF} has been set.",
                -1
            )
        end
        imgui.Hint("Grove Street Families", -1)
        -- ==== 03 ====
        imgui.SameLine()
        if imgui.Button("03", imgui.ImVec2(55, 30)) then
            setMarker(2, Gang03_posX, Gang03_posY, Gang03_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {990000}Yakuza Organization{FFFFFF} has been set.",
                -1
            )
        end
        imgui.Hint("Yakuza Organization", -1)
        -- ==== 04 ====
        imgui.SameLine()
        if imgui.Button("04", imgui.ImVec2(55, 30)) then
            setMarker(2, Gang04_posX, Gang04_posY, Gang04_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {a3a3a3}La Oscura Mafia{FFFFFF} has been set.",
                -1
            )
        end
        imgui.Hint("La Oscura Mafia", -1)
        -- ==== 05 ====
        imgui.SameLine()
        if imgui.Button("05", imgui.ImVec2(55, 30)) then
            setMarker(2, Gang05_posX, Gang05_posY, Gang05_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {A536DD}Front Yard Ballas{FFFFFF} has been set.",
                -1
            )
        end
        imgui.Hint("Front Yard Ballas", -1)
        -- ==== 06 ====
        --imgui.SameLine()
        if imgui.Button("06", imgui.ImVec2(55, 30)) then
            setMarker(2, Gang06_posX, Gang06_posY, Gang06_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {666666}The Black Hand Triads{FFFFFF} has been set.",
                -1
            )
        end
        imgui.Hint("The Black Hand Triads", -1)
        -- ==== 07 ====
        imgui.SameLine()
        if imgui.Button("07", imgui.ImVec2(55, 30)) then
            setMarker(2, Gang07_posX, Gang07_posY, Gang07_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {E0E000}Vatos Locos XIII{FFFFFF} has been set.",
                -1
            )
        end
        imgui.Hint("Vatos Locos XIII", -1)
        -- ==== 08 ====
        imgui.SameLine()
        if imgui.Button("08", imgui.ImVec2(55, 30)) then
            setMarker(2, Gang08_posX, Gang08_posY, Gang08_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {8B4513}Segreto Siciliano{FFFFFF} has been set.",
                -1
            )
        end
        imgui.Hint("Segreto Siciliano", -1)
        -- ==== 09 ====
        imgui.SameLine()
        if imgui.Button("09", imgui.ImVec2(55, 30)) then
            setMarker(2, Gang09_posX, Gang09_posY, Gang09_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {00FFFB}Puente Estrada{FFFFFF} has been set.",
                -1
            )
        end
        imgui.Hint("Puente Estrada", -1)
        -- ==== 10 ====
        imgui.SameLine()
        if imgui.Button("10", imgui.ImVec2(55, 30)) then
            setMarker(2, Gang10_posX, Gang10_posY, Gang10_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {4B0082}Sentinel{FFFFFF} has been set.",
                -1
            )
        end
        imgui.Hint("Sentinel", -1)
    end
    --imgui.SameLine()
        -- imgui.Text("Hospitals") --Hospital
	if imgui.CollapsingHeader(u8"Hospitals") then
        if imgui.Button("All Saints", imgui.ImVec2(70, 30)) then
            setMarker(2, Hospitals_AllSaints_posX, Hospitals_AllSaints_posY, Hospitals_AllSaints_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}All Saints Hospital{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("County", imgui.ImVec2(70, 30)) then
            setMarker(2, Hospitals_County_posX, Hospitals_County_posY, Hospitals_County_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}County General Hospital{FFFFFF} has been set.",
                -1
            )
        end
	end
        --imgui.SameLine()
        -- imgui.Text("Material") --Material
	if imgui.CollapsingHeader(u8"Material") then
        if imgui.Button("MP1", imgui.ImVec2(70, 30)) then
            setMarker(2, Mat_MP1_posX, Mat_MP1_posY, Mat_MP1_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Material Point 1{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("MP2", imgui.ImVec2(70, 30)) then
            setMarker(2, Mat_MP2_posX, Mat_MP2_posY, Mat_MP2_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Material Point 2{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("MP3", imgui.ImVec2(70, 30)) then
            setMarker(2, Mat_MP3_posX, Mat_MP3_posY, Mat_MP3_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Material Point 3{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Air Mats", imgui.ImVec2(70, 30)) then
            setMarker(2, Mat_Air_posX, Mat_Air_posY, Mat_Air_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Air Material Point{FFFFFF} has been set.",
                -1
            )
        end
        --imgui.SameLine()
        if imgui.Button("MF1", imgui.ImVec2(70, 30)) then
            setMarker(2, Mat_MF1_posX, Mat_MF1_posY, Mat_MF1_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Material Factory 1{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("MF2", imgui.ImVec2(70, 30)) then
            setMarker(2, Mat_MF2_posX, Mat_MF2_posY, Mat_MF2_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Material Factory 2{FFFFFF} has been set.",
                -1
            )
        end
	end
        --imgui.SameLine()
        -- imgui.Text("Airport") --Airport
	if imgui.CollapsingHeader(u8"Airport") then
        if imgui.Button("LSI", imgui.ImVec2(70, 30)) then
            setMarker(2, Airport_LSI_posX, Airport_LSI_posY, Airport_LSI_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Los Santos Airport (LSI){FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("SF", imgui.ImVec2(70, 30)) then
            setMarker(2, Airport_SF_posX, Airport_SF_posY, Airport_SF_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Easter Bay Airport (SF){FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("LV", imgui.ImVec2(70, 30)) then
            setMarker(2, Airport_LV_posX, Airport_LV_posY, Airport_LV_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Last Venturas Airport (LV){FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Graveyard", imgui.ImVec2(70, 30)) then
            setMarker(2, Airport_Graveyard_posX, Airport_Graveyard_posY, Airport_Graveyard_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Aircraft Graveyard{FFFFFF} has been set.",
                -1
            )
        end
	end
        --imgui.SameLine()
        -- imgui.Text("Church") --church
	if imgui.CollapsingHeader(u8"Church") then
        if imgui.Button("Little Mexico", imgui.ImVec2(95, 30)) then
            setMarker(2, Church_LM_posX, Church_LM_posY, Church_LM_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Little Mexico Church{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Jefferson", imgui.ImVec2(95, 30)) then
            setMarker(2, Church_Jefferson_posX, Church_Jefferson_posY, Church_Jefferson_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Jefferson Church{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Palomino", imgui.ImVec2(95, 30)) then
            setMarker(2, Church_Palomino_posX, Church_Palomino_posY, Church_Palomino_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Palomino creek parish Church{FFFFFF} has been set.",
                -1
            )
        end
        --imgui.SameLine()
        if imgui.Button("Le Petite", imgui.ImVec2(95, 30)) then
            setMarker(2, Church_LePetite_posX, Church_LePetite_posY, Church_LePetite_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Le Petite Notre-Dame Church{FFFFFF} has been set.",
                -1
            )
        end
	end
        --imgui.SameLine()
        -- imgui.Text("Bank") --Bank
		
	if imgui.CollapsingHeader(u8"Bank") then
        if imgui.Button("Los Santos", imgui.ImVec2(95, 30)) then
            setMarker(2, Bank_LS_posX, Bank_LS_posY, Bank_LS_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Bank Of Los Santos{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Rodeo", imgui.ImVec2(95, 30)) then
            setMarker(2, Bank_Rodeo_posX, Bank_Rodeo_posY, Bank_Rodeo_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Rodeo Bank{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Palomino creek", imgui.ImVec2(95, 30)) then
            setMarker(2, Bank_Palomino_posX, Bank_Palomino_posY, Bank_Palomino_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Bank of Palomino creek{FFFFFF} has been set.",
                -1
            )
        end
        --imgui.SameLine()
        if imgui.Button("San Fierro", imgui.ImVec2(95, 30)) then
            setMarker(2,Bank_SF_posX, Bank_SF_posY, Bank_SF_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Bank of San Fierro{FFFFFF} has been set.",
                -1
            )
        end
		
		

	end

        --imgui.SameLine()
        -- imgui.Text("Pay 'N' Spray ( Los Santos )") --Pay 'N' Spray Los Santos
	if imgui.CollapsingHeader(u8"Pay 'N' Spray ( Los Santos )") then
        if imgui.Button("Santa Maria Beach", imgui.ImVec2(70, 30)) then
            setMarker(2,Spray_ls_Maria_posX, Spray_ls_Maria_posY, Spray_ls_Maria_posZ, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Santa Maria Beach Pay 'N' Spray{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Idlewood", imgui.ImVec2(70, 30)) then
            setMarker(2, 2075.998046875, -1831.8737792969, 13.554534912109, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Idlewood Pay 'N' Spray{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Temple", imgui.ImVec2(70, 30)) then
            setMarker(2, 1025.4779052734, -1033.1903076172, 31.834714889526, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Temple Pay 'N' Spray{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Dillimore", imgui.ImVec2(70, 30)) then
            setMarker(2, 720.42596435547, -472.49508666992, 16.343704223633, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Dillimore Pay 'N' Spray{FFFFFF} has been set.",
                -1
            )
        end
	end
        --imgui.SameLine()
        -- imgui.Text("Pay 'N' Spray ( San Fierro )") --Pay 'N' Spray San Fierro
	if imgui.CollapsingHeader(u8"Pay 'N' Spray ( San Fierro )") then
        if imgui.Button("Doherty", imgui.ImVec2(95, 30)) then
            setMarker(2, -1904.3813476563, 271.95745849609, 41.046875, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Doherty Pay 'N' Spray{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Calton Heights", imgui.ImVec2(95, 30)) then
            setMarker(2, -2425.7497558594, 1033.1448974609, 50.390625, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Calton Heights Pay 'N' Spray{FFFFFF} has been set.",
                -1
            )
        end
	end
        --imgui.SameLine()
	
        -- imgui.Text("Pay 'N' Spray ( Las Venturas )") --Pay 'N' Spray Las Venturas
	if imgui.CollapsingHeader(u8"Pay 'N' Spray ( Las Venturas )") then
        if imgui.Button("RedSands East", imgui.ImVec2(95, 30)) then
            setMarker(2, 1962.0251464844, 2162.0393066406, 10.8203125, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}RedSands East Pay 'N' Spray{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("El Quebrados", imgui.ImVec2(95, 30)) then
            setMarker(2, -1420.5382080078, 2598.0017089844, 55.6875, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}El Quebrados Pay 'N' Spray{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Fort Carson", imgui.ImVec2(95, 30)) then
            setMarker(2, -98.992866516113, 1107.0469970703, 19.7421875, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Fort Carson Pay 'N' Spray{FFFFFF} has been set.",
                -1
            )
        end
	end
        --imgui.SameLine()
        -- imgui.Text("Misc") --Miscellaneous
	if imgui.CollapsingHeader(u8"Misc") then
        if imgui.Button("Paint Ball", imgui.ImVec2(70, 30)) then
            setMarker(2, 1782.4663085938, -1567.3880615234, 13.347187042236, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Paint Ball{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("DMV", imgui.ImVec2(70, 30)) then
            setMarker(2, 857.62884521484, -584.36468505859, 18.117156982422, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}DMV{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Pizza", imgui.ImVec2(70, 30)) then
            setMarker(2, 2095.7316894531, -1772.1342773438, 13.551865577698, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}PIZZA{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("City Hall", imgui.ImVec2(70, 30)) then
            setMarker(2, 1482.1683349609, -1742.9232177734, 13.546875, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}City Hall{FFFFFF} has been set.",
                -1
            )
        end
        --imgui.SameLine()
        if imgui.Button("Ammunation", imgui.ImVec2(95, 30)) then
            setMarker(2, 1363.5604248047, -1273.8363037109, 13.546875, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Ammunation{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Mount Chiliad", imgui.ImVec2(95, 30)) then
            setMarker(2, -2344.3337402344, -2250.6799316406, 17.718265533447, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Mount Chiliad{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Unity Station", imgui.ImVec2(95, 30)) then
            setMarker(2, 1791, -1916, 13, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Unity Station{FFFFFF} has been set.",
                -1
            )
        end
        --imgui.SameLine()
        if imgui.Button("Crane", imgui.ImVec2(60, 30)) then
            setMarker(2, 2677.7082519531, -2226.673828125, 13.546875, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Crane (Sell Car){FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Dice", imgui.ImVec2(60, 30)) then
            setMarker(2, 762.61871337891, -1564.2641601563, 13.553644180298, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Dice{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Drug factory", imgui.ImVec2(80, 30)) then
            setMarker(2, 54.820919036865, -266.05111694336, 1.6029624938965, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {7700FF}Drug factory{FFFFFF} has been set.",
                -1
            )
        end
        imgui.SameLine()
        if imgui.Button("Bengali HQ", imgui.ImVec2(80, 30)) then
            setMarker(2, 1397.7368164063, -1574.0300292969, 14.254735946655, 2, -1)
            sampAddChatMessage(
                "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}A new checkpoint to {006a4e}Bengali {f42a41}Headquarters{FFFFFF} has been set.",
                -1
            )
        end
        imgui.Hint("Bengali Headquarters", -1)
	end
        --imgui.SameLine()
        imgui.Text("More Will Be Added Later.....")
        imgui.EndChild()
        imgui.End()
    end
    if infoWindow.v then
        imgui.ShowCursor = true
        local sw, sh = getScreenResolution()
        imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
        imgui.SetNextWindowSize(imgui.ImVec2(500, 240), imgui.Cond.FirstUseEver)
        imgui.Begin(
            u8 " ",
            infoWindow,
            imgui.WindowFlags.NoCollapse + imgui.WindowFlags.NoScrollbar + imgui.WindowFlags.NoResize
        )
        imgui.PushFont(fsFont)
        imgui.CenterTextColoredRGB("{FFFFFF}SA:MP SQUAD")
        imgui.PopFont()
        imgui.NewLine()
        imgui.PushFont(modfont)
        imgui.CenterTextColoredRGB(
            string.format(
                "{9E9EFF}%s {FFFFFF}( {9E9EFF}%s {FFFFFF})",
                thisScript().name,
                table.concat(thisScript().authors, ", ")
            )
        )
        imgui.PopFont()
        imgui.NewLine()
        imgui.CenterTextColoredRGB("{FFFFFF} Special Thanks to Naruto(NaRu#1507) & Marowan Goku(!Goku#1254)")
        imgui.NewLine()
        imgui.PushFont(jsfont)
        imgui.CenterTextColoredRGB("{00FFFF}Join our {7789DA}DISCORD {00FFFF}server for future updates!")
        imgui.PopFont()
        imgui.CenterTextColoredRGB("{FFFFFF}Check Below!")
        imgui.PushStyleVar(imgui.StyleVar.ItemSpacing, imgui.ImVec2(1, 5))
        sqdbtn()
        imgui.PushFont(fontsize20)
        if imgui.Button(u8 "COPY THE LINK", imgui.ImVec2(245, 40)) then
            if setClipboardText("https://discord.gg/mkMy3Cd") then
                sampAddChatMessage(
                    "{7789DA}Server LINK {7700FF}has been copied to your clipboard. You can now paste it somewhere.",
                    -1
                )
            end
        end
        imgui.Hint("This will COPY the link.", -1)
        imgui.SameLine()
        if imgui.Button(u8 "OPEN THE LINK IN BROWSER", imgui.ImVec2(245, 40)) then
            os.execute("explorer https://discord.gg/mkMy3Cd")
        end
        imgui.Hint("This will OPEN the link in your browser.", -1)
        imgui.PopFont()
        endbtn()
        imgui.PopStyleVar()
        imgui.End()
    end
end

function main()
    while not isSampAvailable() do
        wait(50)
    end
    sampRegisterChatCommand("checkpoint", cmd_cp)
    sampRegisterChatCommand("cp", cmd_cp)
    sampRegisterChatCommand("cpInfo", cmd_info)
    style()
    sampAddChatMessage(
        "{7700FF}SA:MP Squad {DFBD68}Checkpoint++ {FFFFFF}has loaded. {00FF00}/checkpoint {FFFFFF}or {00FF00}/cp",
        -1
    )
    while true do
		if update then
			lua_thread.create(function() 
				wait(20000) 
				thisScript():reload()
				update = false
			end)
		end
        imgui.Process = Checkpoint_Window.v or infoWindow.v
        wait(0)
    end
end

sampRegisterChatCommand(
    "ccp",
    function()
        deleteCheckpoint(marker)
        removeBlip(checkpoint)
        sampAddChatMessage(
            "{FFFFFF}[ {7700FF}Checkpoint++{FFFFFF} ] {FFFFFF}Your last checkpoint has been Distroyed",
            -1
        )
    end
)

function cmd_cp()
    if not (sampIsDialogActive() or isSampfuncsConsoleActive()) then
        Checkpoint_Window.v = not Checkpoint_Window.v
    end
end

function cmd_info()
    if not (sampIsDialogActive() or isSampfuncsConsoleActive()) then
        infoWindow.v = not infoWindow.v
    end
end

function setMarker(type, x, y, z, radius, color)
    deleteCheckpoint(marker)
    removeBlip(checkpoint)
    checkpoint = addBlipForCoord(x, y, z)
    marker = createCheckpoint(type, x, y, z, 1, 1, 1, radius)
    changeBlipColour(checkpoint, 0x7700FFFF)
    lua_thread.create(
        function()
            repeat
                wait(0)
                local x1, y1, z1 = getCharCoordinates(PLAYER_PED)
            until getDistanceBetweenCoords3d(x, y, z, x1, y1, z1) < radius or not doesBlipExist(checkpoint)
            deleteCheckpoint(marker)
            removeBlip(checkpoint)
            addOneOffSound(0, 0, 0, 1149)
        end
    )
end

function onScriptTerminate()
    removeBlip(checkpoint)
    deleteCheckpoint(marker)
end

function style()
    imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
    style.WindowRounding = 2
    style.WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
    style.ChildWindowRounding = 2.0
    style.FrameRounding = 3
    style.ItemSpacing = imgui.ImVec2(5.0, 4.0)
    style.ScrollbarSize = 13.0
    style.ScrollbarRounding = 0
    style.GrabMinSize = 8.0
    style.GrabRounding = 1.0
    style.WindowPadding = imgui.ImVec2(4.0, 4.0)
    style.FramePadding = imgui.ImVec2(3.5, 3.5)
    style.ButtonTextAlign = imgui.ImVec2(0.5, 0.5)
    colors[clr.WindowBg] = ImVec4(0.14, 0.12, 0.16, 1.00)
    colors[clr.ChildWindowBg] = ImVec4(0.30, 0.20, 0.39, 0.00)
    colors[clr.PopupBg] = ImVec4(0.05, 0.05, 0.10, 0.90)
    colors[clr.Border] = ImVec4(0.89, 0.85, 0.92, 0.30)
    colors[clr.BorderShadow] = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.FrameBg] = ImVec4(0.30, 0.20, 0.39, 1.00)
    colors[clr.FrameBgHovered] = ImVec4(0.41, 0.19, 0.63, 0.68)
    colors[clr.FrameBgActive] = ImVec4(0.41, 0.19, 0.63, 1.00)
    colors[clr.TitleBg] = ImVec4(0.41, 0.19, 0.63, 0.45)
    colors[clr.TitleBgCollapsed] = ImVec4(0.41, 0.19, 0.63, 0.35)
    colors[clr.TitleBgActive] = ImVec4(0.41, 0.19, 0.63, 0.78)
    colors[clr.MenuBarBg] = ImVec4(0.30, 0.20, 0.39, 0.57)
    colors[clr.ScrollbarBg] = ImVec4(0.30, 0.20, 0.39, 1.00)
    colors[clr.ScrollbarGrab] = ImVec4(0.41, 0.19, 0.63, 0.31)
    colors[clr.ScrollbarGrabHovered] = ImVec4(0.41, 0.19, 0.63, 0.78)
    colors[clr.ScrollbarGrabActive] = ImVec4(0.41, 0.19, 0.63, 1.00)
    colors[clr.ComboBg] = ImVec4(0.30, 0.20, 0.39, 1.00)
    colors[clr.CheckMark] = ImVec4(0.56, 0.61, 1.00, 1.00)
    colors[clr.SliderGrab] = ImVec4(0.41, 0.19, 0.63, 0.24)
    colors[clr.SliderGrabActive] = ImVec4(0.41, 0.19, 0.63, 1.00)
    colors[clr.Button] = ImVec4(0.41, 0.19, 0.63, 0.44)
    colors[clr.ButtonHovered] = ImVec4(0.41, 0.19, 0.63, 0.86)
    colors[clr.ButtonActive] = ImVec4(0.64, 0.33, 0.94, 1.00)
    colors[clr.Header] = ImVec4(0.41, 0.19, 0.63, 0.76)
    colors[clr.HeaderHovered] = ImVec4(0.41, 0.19, 0.63, 0.86)
    colors[clr.HeaderActive] = ImVec4(0.41, 0.19, 0.63, 1.00)
    colors[clr.ResizeGrip] = ImVec4(0.41, 0.19, 0.63, 0.20)
    colors[clr.ResizeGripHovered] = ImVec4(0.41, 0.19, 0.63, 0.78)
    colors[clr.ResizeGripActive] = ImVec4(0.41, 0.19, 0.63, 1.00)
    colors[clr.CloseButton] = ImVec4(1.00, 1.00, 1.00, 0.75)
    colors[clr.CloseButtonHovered] = ImVec4(0.88, 0.74, 1.00, 0.59)
    colors[clr.CloseButtonActive] = ImVec4(0.88, 0.85, 0.92, 1.00)
    colors[clr.PlotLines] = ImVec4(0.89, 0.85, 0.92, 0.63)
    colors[clr.PlotLinesHovered] = ImVec4(0.41, 0.19, 0.63, 1.00)
    colors[clr.PlotHistogram] = ImVec4(0.89, 0.85, 0.92, 0.63)
    colors[clr.PlotHistogramHovered] = ImVec4(0.41, 0.19, 0.63, 1.00)
    colors[clr.TextSelectedBg] = ImVec4(0.41, 0.19, 0.63, 0.43)
    colors[clr.ModalWindowDarkening] = ImVec4(0.20, 0.20, 0.20, 0.35)
end

function imgui.CenterTextColoredRGB(text)
    local width = imgui.GetWindowWidth()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local ImVec4 = imgui.ImVec4

    local explode_argb = function(argb)
        local a = bit.band(bit.rshift(argb, 24), 0xFF)
        local r = bit.band(bit.rshift(argb, 16), 0xFF)
        local g = bit.band(bit.rshift(argb, 8), 0xFF)
        local b = bit.band(argb, 0xFF)
        return a, r, g, b
    end

    local getcolor = function(color)
        if color:sub(1, 6):upper() == "SSSSSS" then
            local r, g, b = colors[1].x, colors[1].y, colors[1].z
            local a = tonumber(color:sub(7, 8), 16) or colors[1].w * 255
            return ImVec4(r, g, b, a / 255)
        end
        local color = type(color) == "string" and tonumber(color, 16) or color
        if type(color) ~= "number" then
            return
        end
        local r, g, b, a = explode_argb(color)
        return imgui.ImColor(r, g, b, a):GetVec4()
    end

    local render_text = function(text_)
        for w in text_:gmatch("[^\r\n]+") do
            local textsize = w:gsub("{.-}", "")
            local text_width = imgui.CalcTextSize(u8(textsize))
            imgui.SetCursorPosX(width / 2 - text_width.x / 2)
            local text, colors_, m = {}, {}, 1
            w = w:gsub("{(......)}", "{%1FF}")
            while w:find("{........}") do
                local n, k = w:find("{........}")
                local color = getcolor(w:sub(n + 1, k - 1))
                if color then
                    text[#text], text[#text + 1] = w:sub(m, n - 1), w:sub(k + 1, #w)
                    colors_[#colors_ + 1] = color
                    m = n
                end
                w = w:sub(1, n - 1) .. w:sub(k + 1, #w)
            end
            if text[0] then
                for i = 0, #text do
                    imgui.TextColored(colors_[i] or colors[1], u8(text[i]))
                    imgui.SameLine(nil, 0)
                end
                imgui.NewLine()
            else
                imgui.Text(u8(w))
            end
        end
    end
    render_text(text)
end

function sqdbtn()
    imgui.PushStyleColor(imgui.Col.Text, imgui.ImVec4(0, 0, 0, 0.8))
    imgui.PushStyleColor(imgui.Col.Button, imgui.ImVec4(0.467, 0.00, 1, 1))
    imgui.PushStyleColor(imgui.Col.ButtonHovered, imgui.ImVec4(0.5, 0.00, 1, 0.6))
    imgui.PushStyleColor(imgui.Col.ButtonActive, imgui.ImVec4(0.467, 0.00, 1, 0.8))
end
function endbtn()
    imgui.PopStyleColor(4)
    style()
end

function imgui.Hint(text, delay)
    if imgui.IsItemHovered() then
        if go_hint == nil then
            go_hint = os.clock() + (delay and delay or 0.0)
        end
        local alpha = (os.clock() - go_hint) * 5 --spawn rate
        if os.clock() >= go_hint then
            imgui.PushStyleVar(imgui.StyleVar.Alpha, (alpha <= 1.0 and alpha or 1.0))
            imgui.PushStyleColor(imgui.Col.PopupBg, imgui.GetStyle().Colors[imgui.Col.ButtonHovered])
            imgui.BeginTooltip()
            imgui.PushTextWrapPos(450)
            imgui.TextUnformatted(text)
            if not imgui.IsItemVisible() and imgui.GetStyle().Alpha == 1.0 then
                go_hint = nil
            end
            imgui.PopTextWrapPos()
            imgui.EndTooltip()
            imgui.PopStyleColor()
            imgui.PopStyleVar()
        end
    end
end

function update()
  local fpath = os.getenv('TEMP') .. "\\testing_version.json" -- where will our file be downloaded for version comparison
  downloadUrlToFile("https://github.com/arafatislam/chekpoint/raw/main/version", fpath, function(id, status, p1, p2) -- a link to your github where there are lines that I entered in the topic or any other site
    if status == dlstatus.STATUS_ENDDOWNLOADDATA then
    local f = io.open(fpath, 'r') -- is reading
    if f then
      local info = decodeJson(f:read("*a")) -- is reading
      updatelink = info.updateurl
      if info and info.latest then
        version = tonumber(info.latest) -- converts version to number
        if version > tonumber(thisScript().version) then -- if the version is greater than the installed version then...
          lua_thread.create(goupdate) -- update
        else -- if less then
          update = false -- let's not update
          sampAddChatMessage(("[Testing]: You already have the latest version! Update canceled"), -1)
        end
      end
    end
  end
end)
end

--downloading the current version
function goupdate()
sampAddChatMessage("[Testing]: Update detected. AutoReload may conflict. I'm updating...", -1)
sampAddChatMessage("[Testing]: Current version: "..thisScript().version..". A new version: "..version, -1)
wait(300)
downloadUrlToFile(updatelink, thisScript().path, function(id3, status1, p13, p23) -- downloads your file from the latest version
  if status1 == dlstatus.STATUS_ENDDOWNLOADDATA then
  sampAddChatMessage(("[Testing]: Update completed!"), -1)
  thisScript():reload()
end
end)
end

