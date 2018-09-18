Scriptname JxsOrderOfMagi02QuestEnds extends ObjectReference  

Quest Property JxsOrderOfMagiQuest02  Auto  

Event OnOpen(ObjectReference akActionRef)
  if (akActionRef == Game.GetPlayer())

	int stage = JxsOrderOfMagiQuest02.GetCurrentStageID()

	if(stage == 0)
		JxsOrderOfMagiQuest02.SetObjectiveDisplayed(10)
		JxsOrderOfMagiQuest02.SetStage(10)
	endif

	JxsOrderOfMagiQuest02.SetObjectiveCompleted(10)
	JxsOrderOfMagiQuest02.SetStage(20)
	
   endIf
endEvent
