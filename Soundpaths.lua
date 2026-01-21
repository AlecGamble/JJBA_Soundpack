local LSM = LibStub("LibSharedMedia-3.0") 

local Name = "|cffeb008b[|r|cfff55b9fJ|r|cfffc89b5J|r|cffffb2ccB|r|cffffd9e5A|r|cffffffff]|r "

-- ----- 
-- BACKGROUND 
-- ----- 

-- ----- 
--  BORDER 
-- ---- 

-- -----
--   FONT
-- -----

-- -----
--   SOUND
-- -----
LSM:Register("sound", Name.."Caesar!!!", [[Interface\Addons\JJBA_Soundpack\sound\Caesar.ogg]])
LSM:Register("sound", Name.."Freeze", [[Interface\Addons\JJBA_Soundpack\sound\Freeze.ogg]])
LSM:Register("sound", Name.."Giorno", [[Interface\Addons\JJBA_Soundpack\sound\Giorno.ogg]])
LSM:Register("sound", Name.."Goodbye JoJo", [[Interface\Addons\JJBA_Soundpack\sound\GoodbyeJoJo.ogg]])
LSM:Register("sound", Name.."Hey Baby!", [[Interface\Addons\JJBA_Soundpack\sound\HeyBaby.ogg]])
LSM:Register("sound", Name.."Jaggers", [[Interface\Addons\JJBA_Soundpack\sound\Jaggers.ogg]])
LSM:Register("sound", Name.."Kira's Theme", [[Interface\Addons\JJBA_Soundpack\sound\KiraTheme.ogg]])
LSM:Register("sound", Name.."Kono Dio Da", [[Interface\Addons\JJBA_Soundpack\sound\KonoDioDa.ogg]])
LSM:Register("sound", Name.."Lelolelolelo", [[Interface\Addons\JJBA_Soundpack\sound\Lelolelolelolelo.ogg]])
LSM:Register("sound", Name.."Muda Muda", [[Interface\Addons\JJBA_Soundpack\sound\MudaMuda.ogg]])
LSM:Register("sound", Name.."Nice", [[Interface\Addons\JJBA_Soundpack\sound\Nice.ogg]])
LSM:Register("sound", Name.."No No No No No", [[Interface\Addons\JJBA_Soundpack\sound\NoNoNoNoNo.ogg]])
LSM:Register("sound", Name.."Oh No 1", [[Interface\Addons\JJBA_Soundpack\sound\OhNo_01.ogg]])
LSM:Register("sound", Name.."Oh No 2", [[Interface\Addons\JJBA_Soundpack\sound\OhNo_02.ogg]])
LSM:Register("sound", Name.."Oh That's A Baseball!", [[Interface\Addons\JJBA_Soundpack\sound\OhThatsABaseball.ogg]])
LSM:Register("sound", Name.."Ora Ora", [[Interface\Addons\JJBA_Soundpack\sound\OraOra.ogg]])
LSM:Register("sound", Name.."Sonna Da Beetch", [[Interface\Addons\JJBA_Soundpack\sound\SonnaDaBeetch.ogg]])
LSM:Register("sound", Name.."The Hand", [[Interface\Addons\JJBA_Soundpack\sound\TheHand.ogg]])
LSM:Register("sound", Name.."To Be Continued 1", [[Interface\Addons\JJBA_Soundpack\sound\ToBeContinued_01.ogg]])
LSM:Register("sound", Name.."To Be Continued 2", [[Interface\Addons\JJBA_Soundpack\sound\ToBeContinued_02.ogg]])
LSM:Register("sound", Name.."The Hand", [[Interface\Addons\JJBA_Soundpack\sound\TheHand.ogg]])
LSM:Register("sound", Name.."Yes Yes Yes Yes Yes", [[Interface\Addons\JJBA_Soundpack\sound\YesYesYesYes.ogg]])
LSM:Register("sound", Name.."Za Warudo", [[Interface\Addons\JJBA_Soundpack\sound\ZaWarudo.ogg]])
LSM:Register("sound", Name.."Zero", [[Interface\Addons\JJBA_Soundpack\sound\Zero.ogg]])

-- -----
--   STATUSBAR
-- -----

-- -----
--  COUNTDOWNS
-- -----

local heroes = {
	"Dio",
}

-- Bigwigs Countdown Integration
for i = 1, #heroes do
    local hero = heroes[i]
    
    if BigWigsAPI ~= nil then
        local path = "Interface\\AddOns\\JJBA_Soundpack\\sound\\countdown\\%s\\%s_%d.ogg"
        BigWigsAPI:RegisterCountdown(Name..hero, {
            path:format(hero, hero, 1),
            path:format(hero, hero, 2),
            path:format(hero, hero, 3),
            path:format(hero, hero, 4),
            path:format(hero, hero, 5),
        })
    end
end

-- DBM Countdown Integration
local inserted = false
function DBM_CountPack_JJBA()
    if inserted then return end
    for i = 1, #heroes do
        local hero = heroes[i]
        if DBM ~= nil then
            local path = "Interface\\AddOns\\JJBA_Soundpack\\sound\\countdown\\%s\\"
            table.insert(DBM.Counts, { text = Name..hero, value = hero, path = path:format(hero), max = 5})
        end
    end
    inserted = true
end
