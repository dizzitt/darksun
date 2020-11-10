void main()
{
    object oCreature, oTarget, oSpawn = OBJECT_SELF;
    if(GetTimeHour() >= 18 && GetTimeHour() <= 19)
    {
         // Destroy an object (not fully effective until this script ends).
         DestroyObject(GetObjectByTag("Malvin_1"));
         {
         // Spawn "Malvin".
         oTarget = GetWaypointByTag("SS_Camp_6a");
         oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "malvin002", GetLocation(oTarget));
          // Destroy an object (not fully effective until this script ends).
          if(GetTimeHour() >= 18 && GetTimeHour() <= 19)
          DestroyObject(GetObjectByTag("Drex_1"));
        // Spawn "Malvin".
         oTarget = GetWaypointByTag("SS_Camp_4a");
         oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "drex002", GetLocation(oTarget));
        }
       }
      }

