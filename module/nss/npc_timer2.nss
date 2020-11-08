void main()
{
    object oCreature, oTarget, oSpawn = OBJECT_SELF;
    if(GetTimeHour() >= 21 && GetTimeHour() <= 22)
    {
        oTarget = GetWaypointByTag("bellas002");
        oSpawn = CreateObject(OBJECT_TYPE_CREATURE, "bellas002", GetLocation(oTarget));
        DestroyObject(oCreature);
   }
  }
