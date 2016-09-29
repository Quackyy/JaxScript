if GetObjectName(myHero) ~= "Jax" then return end

require('OpenPredict')

print("JaxNation // By:Vikk")

local JaxMenu = Menu("JaxNation", "JaxNation")

  JaxMenu:Menu("Combo", "Combo")
  JaxMenu.Combo:Boolean("useQ", "Use Q", true)
  JaxMenu.Combo:Boolean("useW", "Use W", true)
  JaxMenu.Combo:Boolean("useE", "Use E", true)
  JaxMenu.Combo:Boolean("useR", "Use R", true)
  JaxMenu.Combo:Boolean("useTiamat", "Use Tiamat", true)
  JaxMenu.Combo:Boolean("useHydra", "Use Ravenous Hydra", true)
  JaxMenu.Combo:Boolean("useTitanic", "Use Titanic Hydra", true)
  JaxMenu.Combo:Boolean("useBOTRK", "Use BladeOfTheRuinedKing", true)
  JaxMenu.Combo:Boolean("useYoum", "Use Youmuu's Ghostblade", true)
  JaxMenu.Combo:Boolean("useGun", "Use Hextech Gunblade", true)

OnTick(function()
  
        if ValidTarget(target,GetRange(myHero) + GetHitBox(target)) and CanUseSpell(myHero,_E) == READY and JaxMenu.Combo.useE:Value() then
          CastSpell(_E) 
        end
        
        if ValidTarget(target,GetRange(myHero) and CanUseSpell(myHero,_Q) == READY and JaxMenu.Combo.useQ:Value() then
          CastTargetSpell(target,_Q)
        end
        
        if ValidTarget(target,GetRange(myHero) + GetHitBox(target)) and CanUseSpell(myHero,_W) == READY and JaxMenu.Combo.useE:Value() then
          CastSpell(_W)
        end
        
        if ValidTarget(GetRange(myHero) + GetHitBox(target)) and CanUseSpell(myHero,_R) == READY and JaxMenu.Combo.useR:Value() then
          CastSpell(_R)
        end

         if GetItemSlot(myHero, 3077) > 0 and IsReady(GetItemSlot(myHero, 3077)) and JaxMenu.Combo.useTiamat:Value() then
       CastSpell(GetItemSlot(myHero, 3077))
      end
    if GetItemSlot(myHero, 3074) > 0 and IsReady(GetItemSlot(myHero, 3074)) and JaxMenu.Combo.useHydra:Value() then
       CastSpell(GetItemSlot(myHero, 3074))
      end
    if GetItemSlot(myHero, 3748) > 0 and IsReady(GetItemSlot(myHero, 3748)) and JaxMenu.Combo.useTitanic:Value() then
       CastSpell(GetItemSlot(myHero, 3748))
      end
    if GetItemSlot(myHero, 3153) > 0 and IsReady(GetItemSlot(myHero, 3153)) and JaxMenu.Combo.useBOTRK:Value() then
       CastTargetSpell(target, GetItemSlot(myHero, 3153))
      end
    if GetItemSlot(myHero, 3142) > 0 and IsReady(GetItemSlot(myHero, 3142)) and JaxMenu.Combo.useYoum:Value() then
       CastSpell(GetItemSlot(myHero, 3142))
      end
    if GetItemSlot(myHero, 3146) > 0 and IsReady(GetItemSlot(myHero, 3146)) and JaxMenu.Combo.useBOTRK:Value() then
       CastTargetSpell(target, GetItemSlot(myHero, 3146))
      end 
    end
end)
  
JaxMenu:SubMenu("SkinChanger", "SkinChanger")

local skinMeta = {["Jax"] = {"Classic", "The Mighty", "Vandal", "Angler", "PAX", "Jaximus", "Temple", "Nemesis", "SKT T1", "Chroma1", "Chroma2", "Chroma3", "Warden"}},
JaxMenu.SkinChanger:DropDown('skin', myHero.charName.. " Skins", 1, skinMeta[myHero.charName], HeroSkinChanger, true)
JaxrMenu.SkinChanger.skin.callback = function(model) HeroSkinChanger(myHero, model - 1) print(skinMeta[myHero.charName][model] .." ".. myHero.charName .. " Loaded!") end
