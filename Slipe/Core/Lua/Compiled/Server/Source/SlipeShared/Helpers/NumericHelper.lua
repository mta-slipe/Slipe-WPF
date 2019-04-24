-- Generated by CSharp.lua Compiler
local System = System
local SystemNumerics
System.import(function (out)
  SystemNumerics = System.Numerics
end)
System.namespace("Slipe.Shared.Helpers", function (namespace)
  -- <summary>
  -- Adds some required numeric translations
  -- </summary>
  namespace.class("NumericHelper", function (namespace)
    local ToRadians, ToDegrees, EulerToQuaternion, QuaternionToEuler
    -- <summary>
    -- Convert degrees to radians
    -- </summary>
    ToRadians = function (x)
      return x * 0.0174532923847437 --[[(float)(Math.PI / 180.0)]]
    end
    -- <summary>
    -- Convert radians to degrees
    -- </summary>
    ToDegrees = function (x)
      return System.ToSingle((x * (57.2957795130823 --[[180.0 / Math.PI]])))
    end
    -- <summary>
    -- Translate an MTA Euler Rotation to a Quaternion
    -- </summary>
    EulerToQuaternion = function (rotation)
      -- Default is XYZ
      -- Yaw = y-axis, Pitch = x-axis, Roll = z-axis
      return SystemNumerics.Quaternion.CreateFromYawPitchRoll(ToRadians(rotation.X), ToRadians(rotation.Y), ToRadians(rotation.Z))
    end
    -- <summary>
    -- Translate a Quaternion to an MTA Euler Rotation
    -- </summary>
    QuaternionToEuler = function (q)
      local v1 = q.Z
      local v2 = q.X
      local v3 = q.Y
      local v4 = q.W


      local sinr_cosp = 2.0 * (v4 * v1 + v2 * v3)
      local cosr_cosp = 1.0 - 2.0 * (v1 * v1 + v2 * v2)
      local roll = math.Atan2(sinr_cosp, cosr_cosp)


      local sinp = 2.0 * (v4 * v2 - v3 * v1)
      local pitch
      if math.Abs(sinp) >= 1 then
        pitch = math.Sign(sinp) > 0 and 3.14159265358979 --[[Math.PI]] or - 3.14159265358979 --[[Math.PI]]
      else
        pitch = math.Asin(sinp)
      end


      local siny_cosp = 2.0 * (v4 * v3 + v1 * v2)
      local cosy_cosp = 1.0 - 2.0 * (v2 * v2 + v3 * v3)
      local yaw = math.Atan2(siny_cosp, cosy_cosp)

      if yaw < 0 then
        yaw = yaw + (6.28318530717959 --[[2 * Math.PI]])
      end

      if pitch < 0 then
        pitch = pitch + (6.28318530717959 --[[2 * Math.PI]])
      end

      if roll < 0 then
        roll = roll + (6.28318530717959 --[[2 * Math.PI]])
      end

      return SystemNumerics.Vector3(ToDegrees(System.ToSingle(yaw)), ToDegrees(System.ToSingle(pitch)), ToDegrees(System.ToSingle(roll)))
    end
    return {
      ToRadians = ToRadians,
      ToDegrees = ToDegrees,
      EulerToQuaternion = EulerToQuaternion,
      QuaternionToEuler = QuaternionToEuler
    }
  end)
end)
