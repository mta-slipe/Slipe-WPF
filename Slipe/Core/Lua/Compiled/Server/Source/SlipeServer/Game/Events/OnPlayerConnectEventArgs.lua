-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Server.Game.Events", function (namespace)
  namespace.class("OnPlayerConnectEventArgs", function (namespace)
    local __ctor__
    __ctor__ = function (this, nickname, ip, username, serial, versionNumber, versionString)
      this.Nickname = System.cast(System.String, nickname)
      this.Ip = System.cast(System.String, ip)
      this.Username = System.cast(System.String, username)
      this.Serial = System.cast(System.String, serial)
      this.VersionNumber = System.cast(System.Int32, versionNumber)
      this.VersionString = System.cast(System.String, versionString)
    end
    return {
      VersionNumber = 0,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "Ip", 0x6, System.String },
            { "Nickname", 0x6, System.String },
            { "Serial", 0x6, System.String },
            { "Username", 0x6, System.String },
            { "VersionNumber", 0x6, System.Int32 },
            { "VersionString", 0x6, System.String }
          },
          methods = {
            { ".ctor", 0x604, nil, System.Object, System.Object, System.Object, System.Object, System.Object, System.Object }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)
