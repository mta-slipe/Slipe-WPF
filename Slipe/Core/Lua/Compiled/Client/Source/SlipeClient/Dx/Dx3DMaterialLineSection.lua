-- Generated by CSharp.lua Compiler
local System = System
local SlipeClientDx
local SlipeMtaDefinitions
local SlipeSharedUtilities
local SystemNumerics
System.import(function (out)
  SlipeClientDx = Slipe.Client.Dx
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedUtilities = Slipe.Shared.Utilities
  SystemNumerics = System.Numerics
end)
System.namespace("Slipe.Client.Dx", function (namespace)
  -- <summary>
  -- Draws a textured 3D line between two points in the 3D world - rendered for one frame
  -- </summary>
  namespace.class("Dx3DMaterialLineSection", function (namespace)
    local Draw, internal, __ctor1__, __ctor2__, __ctor3__
    internal = function (this)
      this.UV = System.default(SystemNumerics.Vector2)
      this.UVDimensions = System.default(SystemNumerics.Vector2)
    end
    -- <summary>
    -- Createa material 3d line from all arguments
    -- </summary>
    __ctor1__ = function (this, startPos, endPos, uv, uvDimensions, material, width, color, faceToward, postGUI)
      internal(this)
      SlipeClientDx.Dx3DMaterialLine.__ctor__[1](this, startPos:__clone__(), endPos:__clone__(), material, width, color, faceToward:__clone__(), postGUI)
      this.UV = uv:__clone__()
      this.UVDimensions = uvDimensions:__clone__()
    end
    -- <summary>
    -- Create a material 3d line that always faces the camera
    -- </summary>
    __ctor2__ = function (this, startPos, endPos, uv, uvDimensions, material, width, color)
      __ctor1__(this, startPos:__clone__(), endPos:__clone__(), uv:__clone__(), uvDimensions:__clone__(), material, width, color, SystemNumerics.Vector3.getZero(), false)
    end
    -- <summary>
    -- Create a material 3d line with a base color of white
    -- </summary>
    __ctor3__ = function (this, startPos, endPos, uv, uvDimensions, material, width)
      __ctor2__(this, startPos:__clone__(), endPos:__clone__(), uv:__clone__(), uvDimensions:__clone__(), material, width, SlipeSharedUtilities.Color.getWhite())
    end
    -- <summary>
    -- Draw this line
    -- </summary>
    Draw = function (this)
      if SystemNumerics.Vector3.op_Equality(this.FaceToward, SystemNumerics.Vector3.getZero()) then
        local default = this.Material
        if default ~= nil then
          default = default.getMaterialElement()
        end
        return SlipeMtaDefinitions.MtaClient.DxDrawMaterialSectionLine3D(this:getStartPosition().X, this:getStartPosition().Y, this:getStartPosition().Z, this:getEndPosition().X, this:getEndPosition().Y, this:getEndPosition().Z, this.UV.X, this.UV.Y, this.UVDimensions.X, this.UVDimensions.Y, default, this.Width, this.Color:getHex(), this.PostGUI)
      else
        local extern = this.Material
        if extern ~= nil then
          extern = extern.getMaterialElement()
        end
        return SlipeMtaDefinitions.MtaClient.DxDrawMaterialSectionLine3D(this:getStartPosition().X, this:getStartPosition().Y, this:getStartPosition().Z, this:getEndPosition().X, this:getEndPosition().Y, this:getEndPosition().Z, this.UV.X, this.UV.Y, this.UVDimensions.X, this.UVDimensions.Y, extern, this.Width, this.Color:getHex(), this.PostGUI, this.FaceToward.X, this.FaceToward.Y, this.FaceToward.Z)
      end
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Client.Dx.Dx3DMaterialLine,
          out.Slipe.Client.Dx.IDrawable
        }
      end,
      Draw = Draw,
      __ctor__ = {
        __ctor1__,
        __ctor2__,
        __ctor3__
      }
    }
  end)
end)
