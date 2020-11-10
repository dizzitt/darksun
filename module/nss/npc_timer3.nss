void main()
{
     object oCreature, oTarget, oSpawn = OBJECT_SELF;
       // Retrieve Script Number
    int nSpawnTimer = GetLocalInt(OBJECT_SELF, "SpawnTimer");



    // Invalid Script
    if (nSpawnTimer == -1)
    {
        return;
    }

//
// Only Make Modifications Between These Lines
// -------------------------------------------

    // Script 00
    if (nSpawnTimer == 1)

      if(GetTimeHour() >= 19 && GetTimeHour() <= 20)
       {

         DestroyObject(GetObjectByTag("Malvin_1"));
         {
         oTarget = GetWaypointByTag("SS_Camp_6a");
         oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "malvin002", GetLocation(oTarget));
          }
        }

    if (nSpawnTimer == 2)

      if(GetTimeHour() >= 19 && GetTimeHour() <= 20)
       {

         DestroyObject(GetObjectByTag("Drex_1"));
         {
         oTarget = GetWaypointByTag("SS_Camp_4a");
         oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "drex002", GetLocation(oTarget));
          }
        }

// -------------------------------------------
// Only Make Modifications Between These Lines
//
}


