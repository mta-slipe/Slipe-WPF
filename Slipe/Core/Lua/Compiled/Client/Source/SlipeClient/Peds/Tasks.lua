-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Client.Peds", function (namespace)


  -- <summary>
  -- Represents different ped tasks
  -- </summary>
  namespace.enum("PedTask", function ()
    return {
      Ask_Complex_Arrest_Ped = 0,
      Task_Complex_Attractor_Partner_Wait = 1,
      Task_Complex_Avoid_Building = 2,
      Task_Complex_Avoid_Entity = 3,
      Task_Complex_Avoid_Other_Ped_While_Wandering = 4,
      Task_Complex_Be_Cop = 5,
      Task_Complex_Be_In_Couple = 6,
      Task_Complex_Be_In_Group = 7,
      Task_Complex_Be_Still = 8,
      Task_Complex_Car_Drive = 9,
      Task_Complex_Car_Drive_Mission = 10,
      Task_Complex_Car_Drive_Mission_Flee_Scene = 11,
      Task_Complex_Car_Drive_Mission_Kill_Ped = 12,
      Task_Complex_Car_Drive_Point_Route = 13,
      Task_Complex_Car_Drive_To_Point = 14,
      Task_Complex_Car_Drive_Wander = 15,
      Task_Complex_Car_Open_Driver_Door = 16,
      Task_Complex_Car_Open_Passenger_Door = 17,
      Task_Complex_Car_Quick_Be_Dragged_Out = 18,
      Task_Complex_Car_Slow_Be_Dragged_Out = 19,
      Task_Complex_Car_Slow_Be_Dragged_Out_And_Stand_Up = 20,
      Task_Complex_Chained_Facial = 21,
      Task_Complex_Chat = 22,
      Task_Complex_Climb = 23,
      Task_Complex_Cop_Arrest_Ped = 24,
      Task_Complex_Cop_Hassle_Ped = 25,
      Task_Complex_Cop_In_Car = 26,
      Task_Complex_Cross_Road_Look_And_Achieve_Heading = 27,
      Task_Complex_Destroy_Car = 28,
      Task_Complex_Destroy_Car_Armed = 29,
      Task_Complex_Destroy_Car_Melee = 30,
      Task_Complex_Die = 31,
      Task_Complex_Die_In_Car = 32,
      Task_Complex_Dive_From_Attached_Entity_And_Get_Up = 33,
      Task_Complex_Do_Driveby = 34,
      Task_Complex_Drag_Ped_From_Car = 35,
      Task_Complex_Drive_Fire_Truck = 36,
      Task_Complex_Enter_Any_Car_As_Driver = 37,
      Task_Complex_Enter_Boat_As_Driver = 38,
      Task_Complex_Enter_Car_As_Driver = 39,
      Task_Complex_Enter_Car_As_Driver_Timed = 40,
      Task_Complex_Enter_Car_As_Passenger = 41,
      Task_Complex_Enter_Car_As_Passenger_Timed = 42,
      Task_Complex_Enter_Car_As_Passenger_Wait = 43,
      Task_Complex_Enter_Leader_Car_As_Passenger = 44,
      Task_Complex_Evasive_Cower = 45,
      Task_Complex_Evasive_Dive_And_Get_Up = 46,
      Task_Complex_Evasive_Step = 47,
      Task_Complex_Extinguish_Fires = 48,
      Task_Complex_Extinguish_Fire_On_Foot = 49,
      Task_Complex_Facial = 50,
      Task_Complex_Fall_And_Get_Up = 51,
      Task_Complex_Fall_And_Stay_Down = 52,
      Task_Complex_Fall_To_Death = 53,
      Task_Complex_Flee_Any_Means = 54,
      Task_Complex_Flee_Entity = 55,
      Task_Complex_Flee_Point = 56,
      Task_Complex_Flee_Shooting = 57,
      Task_Complex_Follow_Leader_Any_Means = 58,
      Task_Complex_Follow_Leader_In_Formation = 59,
      Task_Complex_Follow_Node_Route = 60,
      Task_Complex_Follow_Node_Route_Shooting = 61,
      Task_Complex_Follow_Patrol_Route = 62,
      Task_Complex_Follow_Ped_Footsteps = 63,
      Task_Complex_Follow_Point_Route = 64,
      Task_Complex_Follow_Sexy_Ped = 65,
      Task_Complex_Gang_Follower = 66,
      Task_Complex_Gang_Hassle_Ped = 67,
      Task_Complex_Gang_Hassle_Vehicle = 68,
      Task_Complex_Gang_Join_Respond = 69,
      Task_Complex_Gang_Leader = 70,
      Task_Complex_Get_On_Boat_Seat = 71,
      Task_Complex_Get_Out_Of_Way_Of_Car = 72,
      Task_Complex_Get_Up_And_Stand_Still = 73,
      Task_Complex_Goto_Door_And_Open = 74,
      Task_Complex_Goto_Vehicle_And_Lean = 75,
      Task_Complex_Go_Pickup_Entity = 76,
      Task_Complex_Go_To_Attractor = 77,
      Task_Complex_Go_To_Boat_Steering_Wheel = 78,
      Task_Complex_Go_To_Car_Door_And_Stand_Still = 79,
      Task_Complex_Go_To_Point_Aiming = 80,
      Task_Complex_Go_To_Point_And_Stand_Still = 81,
      Task_Complex_Go_To_Point_And_Stand_Still_And_Achieve_Heading = 82,
      Task_Complex_Go_To_Point_Any_Means = 83,
      Task_Complex_Go_To_Point_Shooting = 84,
      Task_Complex_Handsignal_Anim = 85,
      Task_Complex_Hassled_By_Cop = 86,
      Task_Complex_Hit_By_Gun_Response = 87,
      Task_Complex_Hit_Ped_With_Car = 88,
      Task_Complex_Hit_Response = 89,
      Task_Complex_Investigate_Dead_Ped = 90,
      Task_Complex_Investigate_Disturbance = 91,
      Task_Complex_In_Air_And_Land = 92,
      Task_Complex_In_Water = 93,
      Task_Complex_Jump = 94,
      Task_Complex_Kill_Criminal = 95,
      Task_Complex_Kill_Ped_And_Reenter_Car = 96,
      Task_Complex_Kill_Ped_On_Foot = 97,
      Task_Complex_Kill_Ped_On_Foot_Armed = 98,
      Task_Complex_Kill_Ped_On_Foot_Kinda_Stand_Still = 99,
      Task_Complex_Kill_Ped_On_Foot_Melee = 100,
      Task_Complex_Kill_Ped_On_Foot_Stand_Still = 101,
      Task_Complex_Kill_Ped_On_Foot_Stealth = 102,
      Task_Complex_Kill_Ped_On_Foot_Timed = 103,
      Task_Complex_Lean_On_Vehicle = 104,
      Task_Complex_Leave_Any_Car = 105,
      Task_Complex_Leave_Attractor = 106,
      Task_Complex_Leave_Boat = 107,
      Task_Complex_Leave_Car = 108,
      Task_Complex_Leave_Car_And_Die = 109,
      Task_Complex_Leave_Car_And_Flee = 110,
      Task_Complex_Leave_Car_And_Wander = 111,
      Task_Complex_Leave_Car_As_Passenger_Wait = 112,
      Task_Complex_Medic_Treat_Injured_Ped = 113,
      Task_Complex_Move_Back_And_Jump = 114,
      Task_Complex_Observe_Traffic_Lights = 115,
      Task_Complex_Observe_Traffic_Lights_And_Achieve_Heading = 116,
      Task_Complex_On_Fire = 117,
      Task_Complex_Partner = 118,
      Task_Complex_Partner_Chat = 119,
      Task_Complex_Partner_Deal = 120,
      Task_Complex_Partner_Greet = 121,
      Task_Complex_Partner_Shove = 122,
      Task_Complex_Pass_Object = 123,
      Task_Complex_Police_Pursuit = 124,
      Task_Complex_Present_Id_To_Cop = 125,
      Task_Complex_Prostitute_Solicit = 126,
      Task_Complex_React_To_Attack = 127,
      Task_Complex_React_To_Gun_Aimed_At = 128,
      Task_Complex_Road_Rage = 129,
      Task_Complex_Scream_In_Car_Then_Leave = 130,
      Task_Complex_Seek_Entity = 131,
      Task_Complex_Seek_Entity_Aiming = 132,
      Task_Complex_Seek_Entity_Any_Means = 133,
      Task_Complex_Seek_Entity_Shooting = 134,
      Task_Complex_Sequence = 135,
      Task_Complex_Shuffle_Seats = 136,
      Task_Complex_Side_Step_And_Shoot = 137,
      Task_Complex_Signal_At_Ped = 138,
      Task_Complex_Sit_Down_Then_Idle_Then_Stand_Up = 139,
      Task_Complex_Smart_Flee_Entity = 140,
      Task_Complex_Smart_Flee_Point = 141,
      Task_Complex_Stare_At_Ped = 142,
      Task_Complex_Steal_Car = 143,
      Task_Complex_Stuck_In_Air = 144,
      Task_Complex_Sunbathe = 145,
      Task_Complex_Swim_And_Climb_Out = 146,
      Task_Complex_Track_Entity = 147,
      Task_Complex_Treat_Accident = 148,
      Task_Complex_Turn_To_Face_Entity = 149,
      Task_Complex_Use_Attractor = 150,
      Task_Complex_Use_Attractor_Partner = 151,
      Task_Complex_Use_Closest_Free_Scripted_Attractor = 152,
      Task_Complex_Use_Closest_Free_Scripted_Attractor_Run = 153,
      Task_Complex_Use_Closest_Free_Scripted_Attractor_Sprint = 154,
      Task_Complex_Use_Effect = 155,
      Task_Complex_Use_Effect_Running = 156,
      Task_Complex_Use_Effect_Sprinting = 157,
      Task_Complex_Use_Entryexit = 158,
      Task_Complex_Use_Goggles = 159,
      Task_Complex_Use_Mobile_Phone = 160,
      Task_Complex_Use_Paired_Attractor = 161,
      Task_Complex_Use_Scripted_Attractor = 162,
      Task_Complex_Use_Scripted_Brain = 163,
      Task_Complex_Use_Sequence = 164,
      Task_Complex_Use_Swat_Rope = 165,
      Task_Complex_Use_Water_Cannon = 166,
      Task_Complex_Wait_At_Attractor = 167,
      Task_Complex_Wait_For_Backup = 168,
      Task_Complex_Wait_For_Bus = 169,
      Task_Complex_Wait_For_Dry_Weather = 170,
      Task_Complex_Wait_For_Ped = 171,
      Task_Complex_Walk_Alongside_Ped = 172,
      Task_Complex_Walk_Round_Building_Attempt = 173,
      Task_Complex_Walk_Round_Car = 174,
      Task_Complex_Walk_Round_Fire = 175,
      Task_Complex_Walk_Round_Object = 176,
      Task_Complex_Walk_Round_Shop = 177,
      Task_Complex_Walk_With_Ped = 178,
      Task_Complex_Wander = 179,
      Task_Finished = 180,
      Task_Group_Driveby = 181,
      Task_Group_Enter_Car = 182,
      Task_Group_Enter_Car_And_Perform_Sequence = 183,
      Task_Group_Exit_Car = 184,
      Task_Group_Flee_Threat = 185,
      Task_Group_Follow_Leader_Any_Means = 186,
      Task_Group_Follow_Leader_With_Limits = 187,
      Task_Group_Hand_Signal = 188,
      Task_Group_Hassle_Sexy_Ped = 189,
      Task_Group_Hassle_Threat = 190,
      Task_Group_Hassle_Threat_Passive = 191,
      Task_Group_Kill_Player_Basic = 192,
      Task_Group_Kill_Threats_Basic = 193,
      Task_Group_Partner_Deal = 194,
      Task_Group_Partner_Greet = 195,
      Task_Group_Respond_To_Leader_Command = 196,
      Task_Group_Stare_At_Ped = 197,
      Task_Group_Use_Member_Decision = 198,
      Task_Interior_Be_In_House = 199,
      Task_Interior_Be_In_Office = 200,
      Task_Interior_Be_In_Shop = 201,
      Task_Interior_Goto_Info = 202,
      Task_Interior_Leave = 203,
      Task_Interior_Lie_In_Bed = 204,
      Task_Interior_Reserved2 = 205,
      Task_Interior_Reserved3 = 206,
      Task_Interior_Reserved4 = 207,
      Task_Interior_Reserved5 = 208,
      Task_Interior_Reserved6 = 209,
      Task_Interior_Reserved7 = 210,
      Task_Interior_Reserved8 = 211,
      Task_Interior_Shopkeeper = 212,
      Task_Interior_Sit_At_Desk = 213,
      Task_Interior_Sit_In_Restaurant = 214,
      Task_Interior_Sit_On_Chair = 215,
      Task_Interior_Use_Info = 216,
      Task_Kill_All_Threats = 217,
      Task_Kill_Ped_From_Boat = 218,
      Task_Kill_Ped_Group_On_Foot = 219,
      Task_Kill_Ped_On_Foot_While_Ducking = 220,
      Task_None = 221,
      Task_Seek_Cover_Until_Target_Dead = 222,
      Task_Simple_Abseil = 223,
      Task_Simple_Achieve_Heading = 224,
      Task_Simple_Affect_Secondary_Behaviour = 225,
      Task_Simple_Anim = 226,
      Task_Simple_Anim_Looped_Middle = 227,
      Task_Simple_Arrest_Ped = 228,
      Task_Simple_Be_Arrested = 229,
      Task_Simple_Be_Damaged = 230,
      Task_Simple_Be_Hit = 231,
      Task_Simple_Be_Hit_While_Moving = 232,
      Task_Simple_Be_Kicked_On_Ground = 233,
      Task_Simple_Bike_Jacked = 234,
      Task_Simple_Bike_Pick_Up = 235,
      Task_Simple_Call_For_Backup = 236,
      Task_Simple_Car_Align = 237,
      Task_Simple_Car_Close_Door_From_Inside = 238,
      Task_Simple_Car_Close_Door_From_Outside = 239,
      Task_Simple_Car_Drive = 240,
      Task_Simple_Car_Drive_Timed = 241,
      Task_Simple_Car_Fall_Out = 242,
      Task_Simple_Car_Force_Ped_Out = 243,
      Task_Simple_Car_Get_In = 244,
      Task_Simple_Car_Get_Out = 245,
      Task_Simple_Car_Jump_Out = 246,
      Task_Simple_Car_Open_Door_From_Outside = 247,
      Task_Simple_Car_Open_Locked_Door_From_Outside = 248,
      Task_Simple_Car_Quick_Be_Dragged_Out = 249,
      Task_Simple_Car_Quick_Drag_Ped_Out = 250,
      Task_Simple_Car_Set_Ped_In_As_Driver = 251,
      Task_Simple_Car_Set_Ped_In_As_Passenger = 252,
      Task_Simple_Car_Set_Ped_Out = 253,
      Task_Simple_Car_Set_Ped_Quick_Dragged_Out = 254,
      Task_Simple_Car_Set_Ped_Slow_Dragged_Out = 255,
      Task_Simple_Car_Set_Temp_Action = 256,
      Task_Simple_Car_Shuffle = 257,
      Task_Simple_Car_Slow_Be_Dragged_Out = 258,
      Task_Simple_Car_Slow_Drag_Ped_Out = 259,
      Task_Simple_Car_Wait_For_Door_Not_To_Be_In_Use = 260,
      Task_Simple_Car_Wait_To_Slow_Down = 261,
      Task_Simple_Chat = 262,
      Task_Simple_Choking = 263,
      Task_Simple_Clear_Look_At = 264,
      Task_Simple_Climb = 265,
      Task_Simple_Cower = 266,
      Task_Simple_Create_Car_And_Get_In = 267,
      Task_Simple_Dead = 268,
      Task_Simple_Detonate = 269,
      Task_Simple_Die = 270,
      Task_Simple_Die_In_Car = 271,
      Task_Simple_Do_Hand_Signal = 272,
      Task_Simple_Driveby_Shoot = 273,
      Task_Simple_Driveby_Watch_For_Target = 274,
      Task_Simple_Drown = 275,
      Task_Simple_Drown_In_Car = 276,
      Task_Simple_Duck = 277,
      Task_Simple_Duck_Forever = 278,
      Task_Simple_Duck_Toggle = 279,
      Task_Simple_Duck_While_Shots_Whizzing = 280,
      Task_Simple_Evasive_Dive = 281,
      Task_Simple_Evasive_Step = 282,
      Task_Simple_Facial = 283,
      Task_Simple_Fall = 284,
      Task_Simple_Fight = 285,
      Task_Simple_Fight_Ctrl = 286,
      Task_Simple_Finish_Brain = 287,
      Task_Simple_Gang_Driveby = 288,
      Task_Simple_Get_Up = 289,
      Task_Simple_Give_Cpr = 290,
      Task_Simple_Goggles_Off = 291,
      Task_Simple_Goggles_On = 292,
      Task_Simple_Go_To_Point = 293,
      Task_Simple_Go_To_Point_Fine = 294,
      Task_Simple_Go_To_Point_Near_Car_Door_Until_Door_Not_In_Use = 295,
      Task_Simple_Gun_Ctrl = 296,
      Task_Simple_Hail_Taxi = 297,
      Task_Simple_Handsignal_Anim = 298,
      Task_Simple_Hands_Up = 299,
      Task_Simple_Hit_Back = 300,
      Task_Simple_Hit_Behind = 301,
      Task_Simple_Hit_By_Gun_Back = 302,
      Task_Simple_Hit_By_Gun_Front = 303,
      Task_Simple_Hit_By_Gun_Left = 304,
      Task_Simple_Hit_By_Gun_Right = 305,
      Task_Simple_Hit_Front = 306,
      Task_Simple_Hit_Head = 307,
      Task_Simple_Hit_Left = 308,
      Task_Simple_Hit_Right = 309,
      Task_Simple_Hit_Wall = 310,
      Task_Simple_Hold_Entity = 311,
      Task_Simple_Hurt_Ped_With_Car = 312,
      Task_Simple_Idle_Sunbathing = 313,
      Task_Simple_Ik_Chain = 314,
      Task_Simple_Ik_Look_At = 315,
      Task_Simple_Ik_Manager = 316,
      Task_Simple_Ik_Point_L_Arm = 317,
      Task_Simple_Ik_Point_R_Arm = 318,
      Task_Simple_Inform_Group = 319,
      Task_Simple_Inform_Respected_Friends = 320,
      Task_Simple_In_Air = 321,
      Task_Simple_Jetpack = 322,
      Task_Simple_Jump = 323,
      Task_Simple_Kill_Ped_With_Car = 324,
      Task_Simple_Land = 325,
      Task_Simple_Look_About = 326,
      Task_Simple_Look_At_Entity_Or_Coord = 327,
      Task_Simple_Named_Anim = 328,
      Task_Simple_On_Escalator = 329,
      Task_Simple_Pause = 330,
      Task_Simple_Phone_In = 331,
      Task_Simple_Phone_Out = 332,
      Task_Simple_Phone_Talk = 333,
      Task_Simple_Pickup_Entity = 334,
      Task_Simple_Player_In_Car = 335,
      Task_Simple_Player_On_Fire = 336,
      Task_Simple_Player_On_Foot = 337,
      Task_Simple_Putdown_Entity = 338,
      Task_Simple_Ragdoll = 339,
      Task_Simple_Say = 340,
      Task_Simple_Scratch_Head = 341,
      Task_Simple_Set_Char_Decision_Maker = 342,
      Task_Simple_Set_Char_Ignore_Weapon_Range_Flag = 343,
      Task_Simple_Set_Kinda_Stay_In_Same_Place = 344,
      Task_Simple_Set_Ped_As_Auto_Driver = 345,
      Task_Simple_Set_Stay_In_Same_Place = 346,
      Task_Simple_Shake_Fist = 347,
      Task_Simple_Sit_Down = 348,
      Task_Simple_Sit_Idle = 349,
      Task_Simple_Slide_To_Coord = 350,
      Task_Simple_Stand_Still = 351,
      Task_Simple_Stand_Up = 352,
      Task_Simple_Start_Sunbathing = 353,
      Task_Simple_Stealth_Kill = 354,
      Task_Simple_Stop_Sunbathing = 355,
      Task_Simple_Sunbathe = 356,
      Task_Simple_Swim = 357,
      Task_Simple_Throw = 358,
      Task_Simple_Throw_Ctrl = 359,
      Task_Simple_Timed_Anim = 360,
      Task_Simple_Tired = 361,
      Task_Simple_Toggle_Ped_Threat_Scanner = 362,
      Task_Simple_Trigger_Event = 363,
      Task_Simple_Trigger_Look_At = 364,
      Task_Simple_Turn_180 = 365,
      Task_Simple_Uninterruptable = 366,
      Task_Simple_Use_Atm = 367,
      Task_Simple_Use_Gun = 368,
      Task_Simple_Wait_For_Bus = 369,
      Task_Simple_Wait_For_Pizza = 370,
      Task_Simple_Wait_Until_Ped_In_Car = 371,
      Task_Simple_Wait_Until_Ped_Out_Car = 372,
      Task_Smart_Flee_Entity_Walking = 373,
      Task_Wait_For_Matching_Area_Codes = 374,
      Task_Wait_For_Matching_Leader_Area_Codes = 375,
      Task_Zone_Response = 376
    }
  end)
end)