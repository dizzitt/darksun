void main()
{
    object oCreature = OBJECT_SELF;
    if(GetTimeHour() >= 6 && GetTimeHour() <= 7)
    {
        DestroyObject(oCreature);
    }
}
