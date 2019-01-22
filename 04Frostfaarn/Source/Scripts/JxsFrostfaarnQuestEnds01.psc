Scriptname JxsFrostfaarnQuestEnds01 extends ObjectReference  

Quest Property targetQuest  Auto  

Event OnActivate(ObjectReference akActionRef)
  if (akActionRef == Game.GetPlayer())

	int stage = targetQuest.GetCurrentStageID()

	if(stage == 0)
		targetQuest.SetObjectiveDisplayed(10)
		targetQuest.SetStage(10)
	endif

	targetQuest.SetObjectiveCompleted(10)
	targetQuest.SetStage(20)
	
   endIf
endEvent