Scriptname JxsIsleOfStormQuestStarts01 extends ObjectReference  

Quest Property targetQuest  Auto  

Event OnRead()
	targetQuest.SetObjectiveDisplayed(10)
	targetQuest.SetStage(10)
endEvent