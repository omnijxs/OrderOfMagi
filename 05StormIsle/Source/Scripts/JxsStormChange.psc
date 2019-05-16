Scriptname JxsStormChange extends ObjectReference  

Weather Property theWeather Auto  
GlobalVariable Property ActivateIsleOfStormStorm Auto  

Event onTriggerEnter(objectreference akactionref)

	Weather currentWeather = Weather.GetCurrentWeather()

	if akactionref == game.getPlayer() && currentWeather.GetClassification() != 2 && ActivateIsleOfStormStorm.GetValue() == 1		
		theWeather.SetActive(true, false)
	endif

endevent

