//
//   NESS
//   Patrol Scripts v8.1.3
//
//
#include "spawn_functions"
//
object GetChildByTag(object oSpawn, string sChildTag);
object GetChildByNumber(object oSpawn, int nChildNum);
object GetSpawnByID(int nSpawnID);
void DeactivateSpawn(object oSpawn);
void DeactivateSpawnsByTag(string sSpawnTag);
void DeactivateAllSpawns();
void DespawnChildren(object oSpawn);
void DespawnChildrenByTag(object oSpawn, string sSpawnTag);
//
//
void main()
{
    // Retrieve Script Number
    int nPatrolScript = GetLocalInt(OBJECT_SELF, "PatrolScript");

    // Retrieve Stop Information
    int nStopNumber = GetLocalInt(OBJECT_SELF, "PR_NEXTSTOP");
    object oStop = GetLocalObject(OBJECT_SELF, "PR_SN" + PadIntToString(nStopNumber, 2));

    // Invalid Script
    if (nPatrolScript == -1)
    {
        return;
    }

//
// Only Make Modifications Between These Lines
// -------------------------------------------


    // Script 00
    if (nPatrolScript == 0)
    {
        ActionDoCommand(SpeakString("Example!"));
    }
    //

    // Turn Off Lights
    if (nPatrolScript == 7)
    {
        object oLight = GetNearestObjectByTag("Light", oStop);
        if ((GetIsDay() == TRUE && GetPlaceableIllumination(oLight) == TRUE)
         || (GetIsNight() == TRUE && GetPlaceableIllumination(oLight) == FALSE))
        {
            ActionDoCommand(DoPlaceableObjectAction(oLight, PLACEABLE_ACTION_USE));
        }
    }

       // dwarf guard checks door
    if (nPatrolScript == 99)
      {
        int nRoll = d3(1);
        if (nRoll == 1)
      {
        object oDoor = GetNearestObject(OBJECT_TYPE_DOOR, oStop, d3(1));
        float fDist = GetDistanceBetween(oStop, oDoor);
        if (oDoor != OBJECT_INVALID && GetDistanceBetween(oStop, oDoor) < 16.0)
      {
      // goto door and examine it
      ActionSpeakString("Think I'll check that door over there.");
      ActionMoveToObject(oDoor, FALSE, 0.5);
      ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 3.0);
      switch (d3(1))
      {
      case 1:
      ActionSpeakString("Dee dum, dee dum, looks OK");
      break;
      case 2:
      ActionDoCommand(SpeakString("Yup, seems to be locked real good."));
      break;
      case 3:
      ActionSpeakString("Hay, you in the house, lock you doors!");
      break;
      }
     }
    }
   }
         // NPC fills and drink water from Silver Springs
    if (nPatrolScript == 98)
       {
       object oFill = GetNearestObjectByTag("fill_1", oStop);
       float fDist = GetDistanceBetween(oStop, oFill);
       if (oFill != OBJECT_INVALID && GetDistanceBetween(oStop, oFill) < 30.0)
       {
       // goto door and examine it
       ActionSpeakString("Think I'll fill my canteen and have a drink.");
       {
       ActionMoveToObject(oFill, FALSE, 0.5);
       ActionPlayAnimation(ANIMATION_LOOPING_GET_LOW, 1.0, 3.0);
       ActionPlayAnimation(ANIMATION_FIREFORGET_DRINK);
      }
     }
    }

// -------------------------------------------
// Only Make Modifications Between These Lines
//

}

