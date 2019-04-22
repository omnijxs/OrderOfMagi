Scriptname JxMaarqahStormEffectScript extends ObjectReference  

Weather Property theWeather  Auto  

Event OnEquipped(Actor akActor)
	if(akActor == Game.GetPlayer())
		theWeather.SetActive(true, false)
	endIf
EndEvent

Event OnUnequipped(Actor akActor)
	if(akActor == Game.GetPlayer())
		Weather.ReleaseOverride()
	endIf
EndEvent
