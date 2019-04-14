Scriptname JxsStormChange extends ObjectReference  

Weather Property theWeather  Auto  

Event onTriggerEnter(objectreference akactionref)

	Weather currentWeather = Weather.GetCurrentWeather()

	if akactionref == game.getPlayer() && currentWeather.GetClassification() != 2		
		theWeather.SetActive(true, false)
	endif

endevent