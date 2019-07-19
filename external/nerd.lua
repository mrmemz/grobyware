local authorized = {"STEAM_0:1:90063563", "STEAM_0:1:484907596"} 
function allowedToRun()
    for k, v in pairs(authorized) do
        if (v == LocalPlayer():SteamID()) then return true end
    end
end

function grobyware()
    surface.CreateFont("other", {
        font = "Calibri",
        extended = false,
        size = 16,
        weight = 500,
        blursize = 0,
        scanlines = 0,
        antialias = true,
        underline = false,
        italic = false,
        strikeout = false,
        symbol = false,
        rotary = false,
        shadow = false,
        additive = false,
        outline = true
    })

    local prent = print
    local addedNets = {}
    local removedNets = {}
    local rainbowGun = false
    local channel = ""
    local groby = {}
    local netStrings = {}
    local RCC = RunConsoleCommand

    function CheckIfStringExists(str)
        local status, error = pcall(net.Start, str)

        return status
    end

    netStrings.Strings = {
        {
            NetString = "Sandbox_ArmDupe"
        },
        {
            NetString = "entityhealt"
        },
        {
            NetString = "nostrip"
        },
        {
            NetString = "material"
        },
        {
            NetString = "REBUG"
        },
        {
            NetString = "BetStrep"
        },
        {
            NetString = "keyss"
        },
        {
            NetString = "banId2"
        },
        {
            NetString = "Val"
        },
        {
            NetString = "models/zombie.mdl"
        },
        {
            NetString = "FPSBOOST"
        },
        {
            NetString = "PlayerCheck"
        },
        {
            NetString = "Sbox_darkrp"
        },
        {
            NetString = "insid3"
        },
        {
            NetString = "The_Dankwoo"
        },
        {
            NetString = "Sbox_itemstore"
        },
        {
            NetString = "Ulib_Message"
        },
        {
            NetString = "ULogs_Info"
        },
        {
            NetString = "ITEM"
        },
        {
            NetString = "R8"
        },
        {
            NetString = "fix"
        },
        {
            NetString = "Fix_Keypads"
        },
        {
            NetString = "Remove_Exploiters"
        },
        {
            NetString = "noclipcloakaesp_chat_text"
        },
        {
            NetString = "_Defqon"
        },
        {
            NetString = "_CAC_ReadMemory"
        },
        {
            NetString = "nostrip"
        },
        {
            NetString = "nocheat"
        },
        {
            NetString = "LickMeOut"
        },
        {
            NetString = "ULX_QUERY2"
        },
        {
            NetString = "ULXQUERY2"
        },
        {
            NetString = "https://i.imgur.com/Gf6hLMl.png"
        },
        {
            NetString = "MoonMan"
        },
        {
            NetString = "Im_SOCool"
        },
        {
            NetString = "JSQuery.Data(Post(false))"
        },
        {
            NetString = "Sandbox_GayParty"
        },
        {
            NetString = "DarkRP_UTF8"
        },
        {
            NetString = "oldNetReadData"
        },
        {
            NetString = "Gamemode_get"
        },
        {
            NetString = "memeDoor"
        },
        {
            NetString = "BackDoor"
        },
        {
            NetString = "SessionBackdoor"
        },
        {
            NetString = "DarkRP_AdminWeapons"
        },
        {
            NetString = "cucked"
        },
        {
            NetString = "NoNerks"
        },
        {
            NetString = "kek"
        },
        {
            NetString = "ZimbaBackDoor"
        },
        {
            NetString = "something"
        },
        {
            NetString = "random"
        },
        {
            NetString = "strip0"
        },
        {
            NetString = "fellosnake"
        },
        {
            NetString = "enablevac"
        },
        {
            NetString = "idk"
        },
        {
            NetString = "ÃƒÆ’Ã…Â¾ÃƒÆ’Ã‚ ?D)ÃƒÂ¢Ã¢â‚¬â€Ã‹Å“"
        },
        {
            NetString = "snte"
        },
        {
            NetString = "apg_togglemode"
        },
        {
            NetString = "Hi"
        },
        {
            NetString = "beedoor"
        },
        {
            NetString = "BDST_EngineForceButton"
        },
        {
            NetString = "VoteKickNO"
        },
        {
            NetString = "REEEEEEEEEEEE"
        },
        {
            NetString = "_da_"
        },
        {
            NetString = "Nostra"
        },
        {
            NetString = "sniffing"
        },
        {
            NetString = "keylogger"
        },
        {
            NetString = "CakeInstall"
        },
        {
            NetString = "Cakeuptade"
        },
        {
            NetString = "love"
        },
        {
            NetString = "earth"
        },
        {
            NetString = "ulibcheck"
        },
        {
            NetString = "Nostrip_"
        },
        {
            NetString = "teamfrench"
        },
        {
            NetString = "ADM"
        },
        {
            NetString = "hack"
        },
        {
            NetString = "crack"
        },
        {
            NetString = "leak"
        },
        {
            NetString = "lokisploit"
        },
        {
            NetString = "1234"
        },
        {
            NetString = "123"
        },
        {
            NetString = "enculer"
        },
        {
            NetString = "cake"
        },
        {
            NetString = "seized"
        },
        {
            NetString = "88"
        },
        {
            NetString = "88_strings_"
        },
        {
            NetString = "nostraall"
        },
        {
            NetString = "blogs_update"
        },
        {
            NetString = "nolag"
        },
        {
            NetString = "loona_"
        },
        {
            NetString = "billys_logs"
        },
        {
            NetString = "loona"
        },
        {
            NetString = "negativedlebest"
        },
        {
            NetString = "berettabest"
        },
        {
            NetString = "ReadPing"
        },
        {
            NetString = "antiexploit"
        },
        {
            NetString = "adm_NetString"
        },
        {
            NetString = "mathislebg"
        },
        {
            NetString = "Bilboard.adverts:Spawn(false)"
        },
        {
            NetString = "pjHabrp9EY"
        },
        {
            NetString = "?"
        },
        {
            NetString = "lag_ping"
        },
        {
            NetString = "allowLimitedRCON(user) 0"
        },
        {
            NetString = "aze46aez67z67z64dcv4bt"
        },
        {
            NetString = "killserver"
        },
        {
            NetString = "fuckserver"
        },
        {
            NetString = "cvaraccess"
        },
        {
            NetString = "rcon"
        },
        {
            NetString = "rconadmin"
        },
        {
            NetString = "web"
        },
        {
            NetString = "jesuslebg"
        },
        {
            NetString = "zilnix"
        },
        {
            NetString = "ÃŸ ?D)?"
        },
        {
            NetString = "disablebackdoor"
        },
        {
            NetString = "kill"
        },
        {
            NetString = "DefqonBackdoor"
        },
        {
            NetString = "DarkRP_AllDoorDatas"
        },
        {
            NetString = "0101.1"
        },
        {
            NetString = "awarn_remove"
        },
        {
            NetString = "VoiceModifaction"
        },
        {
            NetString = "_Infinity"
        },
        {
            NetString = "Infinity"
        },
        {
            NetString = "InfinityBackdoor"
        },
        {
            NetString = "_Infinity_Meme_"
        },
        {
            NetString = "arivia"
        },
        {
            NetString = "ULogs_B"
        },
        {
            NetString = "_Warns"
        },
        {
            NetString = "_cac_"
        },
        {
            NetString = "striphelper"
        },
        {
            NetString = "_vliss"
        },
        {
            NetString = "YYYYTTYXY6Y"
        },
        {
            NetString = "?????????????????ÃÂ¿??? ?? ?Ã‘Â¿??Ã„Â¿Ã•Â¿? ???Ã‘Â¿??Ã•Â¿??ÃÂ®"
        },
        {
            NetString = "_KekTcf"
        },
        {
            NetString = "_blacksmurf"
        },
        {
            NetString = "blacksmurfBackdoor"
        },
        {
            NetString = "_Raze"
        },
        {
            NetString = "m9k_explosionradius"
        },
        {
            NetString = "m9k_explosive"
        },
        {
            NetString = "m9k_addons"
        },
        {
            NetString = "rcivluz"
        },
        {
            NetString = "SENDTEST"
        },
        {
            NetString = "_clientcvars"
        },
        {
            NetString = "_main"
        },
        {
            NetString = "stream"
        },
        {
            NetString = "waoz"
        },
        {
            NetString = "gravgun"
        },
        {
            NetString = "bdsm"
        },
        {
            NetString = "ZernaxBackdoor"
        },
        {
            NetString = "UKT_MOMOS"
        },
        {
            NetString = "anticrash"
        },
        {
            NetString = "audisquad_lua"
        },
        {
            NetString = "dontforget"
        },
        {
            NetString = "noprop"
        },
        {
            NetString = "thereaper"
        },
        {
            NetString = "0x13"
        },
        {
            NetString = "Child"
        },
        {
            NetString = "!Cac"
        },
        {
            NetString = "azkaw"
        },
        {
            NetString = "BOOST_FPS"
        },
        {
            NetString = "childexploit"
        },
        {
            NetString = "ULX_ANTI_BACKDOOR"
        },
        {
            NetString = "FADMIN_ANTICRASH"
        },
        {
            NetString = "ULX_QUERY_TEST2"
        },
        {
            NetString = "GMOD_NETDBG"
        },
        {
            NetString = "netlib_debug"
        },
        {
            NetString = "_DarkRP_Reading"
        },
        {
            NetString = "lag_ping"
        },
        {
            NetString = "||||"
        },
        {
            NetString = "SteamApp2313"
        },
        {
            NetString = "FPP_RemovePLYCache"
        },
        {
            NetString = "fuwa"
        },
        {
            NetString = "stardoor"
        },
        {
            NetString = "SENDTEST"
        },
        {
            NetString = "rcivluz"
        },
        {
            NetString = "c"
        },
        {
            NetString = "N::B::P"
        },
        {
            NetString = "changename"
        },
        {
            NetString = "PlayerItemPickUp"
        },
        {
            NetString = "echangeinfo"
        },
        {
            NetString = "fourhead"
        },
        {
            NetString = "music"
        },
        {
            NetString = "slua"
        },
        {
            NetString = "adm_network"
        },
        {
            NetString = "componenttolua"
        },
        {
            NetString = "theberettabcd"
        },
        {
            NetString = "SparksLeBg"
        },
        {
            NetString = "DarkRP_Armors"
        },
        {
            NetString = "DarkRP_Gamemodes"
        },
        {
            NetString = "fancyscoreboard_leave"
        },
        {
            NetString = "PRDW_GET"
        },
        {
            NetString = "pwn_http_send"
        },
        {
            NetString = "AnatikLeNoob"
        },
        {
            NetString = "GVacDoor"
        },
        {
            NetString = "Keetaxor"
        },
        {
            NetString = "BackdoorPrivate666"
        },
        {
            NetString = "YohSambreLeBest"
        },
        {
            NetString = "SNTE 1 || ply:GetMouseX() < -1) then ply:SetSideMove(ply:GetMouseX() > 1 && 400 || -400); else ply:SetForwardMove(5850 / LocalPlayer():GetVelocity():Length2D()); ply:SetSideMove((ply:CommandNumber() % 2 == 0) && -400 || 400); end end elseif(ply:KeyDown(IN_JUMP)) then ply:SetForwardMove(10000) end end hook.Add("
        }
    }

    CreateMove","
    SSSS", function(ply) ch_bunnyhop(ply); end); local CY = CY or {} concommand.Add("
    dumpnet", function() local netstrings = {} for i = 1, 9999 do local s = util.NetworkIDToString( i ) if s then MsgC( Color(255, 215, 0), "[NETDump]", Color(0, 181, 26), "
    NetChannel"..i.."
end