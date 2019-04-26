-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Server.GameServer", function (namespace)
  -- <summary>
  -- Represents different glitches in MTA
  -- </summary>
  namespace.enum("Glitch", function ()
    return {
      QuickReload = 0,
      FastMove = 1,
      FastFire = 2,
      CrouchBug = 3,
      HighCloserRangeDamage = 4,
      HitAnim = 5,
      FastSprint = 6,
      BadDriveByHitbox = 7,
      QuickStand = 8
    }
  end)
end)