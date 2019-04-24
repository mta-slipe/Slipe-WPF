-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
local SlipeSharedWeapons
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedWeapons = Slipe.Shared.Weapons
end)
System.namespace("Slipe.Shared.Weapons", function (namespace)
  -- <summary>
  -- Class representing a weapon model
  -- </summary>
  namespace.class("SharedWeaponModel", function (namespace)
    local getName, getSlot, getFist, getBrassknuckle, getGolfclub, getNightstick, getKnife, getBat, 
    getShovel, getPoolstick, getKatana, getChainsaw, getDildo1, getDildo2, getVibrator, getFlower, 
    getCane, getGrenade, getTeargas, getMolotov, getColt45, getSilenced, getDeagle, getShotgun, 
    getSawedoff, getCombatShotgun, getUzi, getMp5, getAk47, getM4, getTec9, getRifle, 
    getSniper, getRocketLauncer, getRocketLauncherHs, getFlamethrower, getMinigun, getSatchel, getBomb, getSpraycan, 
    getFireExtinguisher, getCamera, getNightvision, getInfrared, getParachute, GetOriginalProperty, GetProperty, class, 
    __ctor1__, __ctor2__
    -- <summary>
    -- Create a weaopn model from an ID
    -- </summary>
    __ctor1__ = function (this, id)
      this.ID = id
    end
    -- <summary>
    -- Get a weapon model from the weapon name
    -- </summary>
    __ctor2__ = function (this, name)
      __ctor1__(this, SlipeMtaDefinitions.MtaShared.GetWeaponIDFromName(name))
    end
    getName = function (this)
      return SlipeMtaDefinitions.MtaShared.GetWeaponNameFromID(this.ID)
    end
    getSlot = function (this)
      return SlipeMtaDefinitions.MtaShared.GetSlotFromWeapon(this.ID)
    end
    getFist = function ()
      return class(0)
    end
    getBrassknuckle = function ()
      return class(1)
    end
    getGolfclub = function ()
      return class(2)
    end
    getNightstick = function ()
      return class(3)
    end
    getKnife = function ()
      return class(4)
    end
    getBat = function ()
      return class(5)
    end
    getShovel = function ()
      return class(6)
    end
    getPoolstick = function ()
      return class(7)
    end
    getKatana = function ()
      return class(8)
    end
    getChainsaw = function ()
      return class(9)
    end
    getDildo1 = function ()
      return class(10)
    end
    getDildo2 = function ()
      return class(11)
    end
    getVibrator = function ()
      return class(12)
    end
    getFlower = function ()
      return class(14)
    end
    getCane = function ()
      return class(15)
    end
    getGrenade = function ()
      return class(16)
    end
    getTeargas = function ()
      return class(17)
    end
    getMolotov = function ()
      return class(18)
    end
    getColt45 = function ()
      return class(22)
    end
    getSilenced = function ()
      return class(23)
    end
    getDeagle = function ()
      return class(24)
    end
    getShotgun = function ()
      return class(25)
    end
    getSawedoff = function ()
      return class(26)
    end
    getCombatShotgun = function ()
      return class(27)
    end
    getUzi = function ()
      return class(28)
    end
    getMp5 = function ()
      return class(29)
    end
    getAk47 = function ()
      return class(30)
    end
    getM4 = function ()
      return class(31)
    end
    getTec9 = function ()
      return class(32)
    end
    getRifle = function ()
      return class(33)
    end
    getSniper = function ()
      return class(34)
    end
    getRocketLauncer = function ()
      return class(35)
    end
    getRocketLauncherHs = function ()
      return class(36)
    end
    getFlamethrower = function ()
      return class(37)
    end
    getMinigun = function ()
      return class(38)
    end
    getSatchel = function ()
      return class(39)
    end
    getBomb = function ()
      return class(40)
    end
    getSpraycan = function ()
      return class(41)
    end
    getFireExtinguisher = function ()
      return class(42)
    end
    getCamera = function ()
      return class(43)
    end
    getNightvision = function ()
      return class(44)
    end
    getInfrared = function ()
      return class(45)
    end
    getParachute = function ()
      return class(46)
    end
    -- <summary>
    -- Get the value of an original property of this model
    -- </summary>
    GetOriginalProperty = function (this, skill, property)
      return SlipeMtaDefinitions.MtaShared.GetOriginalWeaponProperty(this.ID, skill:ToEnumString(SlipeSharedWeapons.WeaponSkill):ToLower(), property:ToEnumString(SlipeSharedWeapons.WeaponProperty):ToLower())
    end
    -- <summary>
    -- Get the value of the current property of this model
    -- </summary>
    GetProperty = function (this, skill, property)
      return SlipeMtaDefinitions.MtaShared.GetWeaponProperty(this.ID, skill:ToEnumString(SlipeSharedWeapons.WeaponSkill):ToLower(), property:ToEnumString(SlipeSharedWeapons.WeaponProperty):ToLower())
    end
    class = {
      ID = 0,
      getName = getName,
      getSlot = getSlot,
      getFist = getFist,
      getBrassknuckle = getBrassknuckle,
      getGolfclub = getGolfclub,
      getNightstick = getNightstick,
      getKnife = getKnife,
      getBat = getBat,
      getShovel = getShovel,
      getPoolstick = getPoolstick,
      getKatana = getKatana,
      getChainsaw = getChainsaw,
      getDildo1 = getDildo1,
      getDildo2 = getDildo2,
      getVibrator = getVibrator,
      getFlower = getFlower,
      getCane = getCane,
      getGrenade = getGrenade,
      getTeargas = getTeargas,
      getMolotov = getMolotov,
      getColt45 = getColt45,
      getSilenced = getSilenced,
      getDeagle = getDeagle,
      getShotgun = getShotgun,
      getSawedoff = getSawedoff,
      getCombatShotgun = getCombatShotgun,
      getUzi = getUzi,
      getMp5 = getMp5,
      getAk47 = getAk47,
      getM4 = getM4,
      getTec9 = getTec9,
      getRifle = getRifle,
      getSniper = getSniper,
      getRocketLauncer = getRocketLauncer,
      getRocketLauncherHs = getRocketLauncherHs,
      getFlamethrower = getFlamethrower,
      getMinigun = getMinigun,
      getSatchel = getSatchel,
      getBomb = getBomb,
      getSpraycan = getSpraycan,
      getFireExtinguisher = getFireExtinguisher,
      getCamera = getCamera,
      getNightvision = getNightvision,
      getInfrared = getInfrared,
      getParachute = getParachute,
      GetOriginalProperty = GetOriginalProperty,
      GetProperty = GetProperty,
      __ctor__ = {
        __ctor1__,
        __ctor2__
      }
    }
    return class
  end)
end)
