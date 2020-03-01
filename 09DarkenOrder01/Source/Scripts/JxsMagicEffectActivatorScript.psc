Scriptname JxsMagicEffectActivatorScript extends ObjectReference  

bool property doOnce = FALSE auto
bool property disableWhenDone = FALSE auto
Keyword Property chosenEffect  Auto  

auto State waiting
	Event onTrigger(objectReference triggerRef)

		Actor actorRef = triggerRef as Actor

		if doOnce == TRUE
			gotoState("allDone")
		endif
		if disableWhenDone
			Self.Disable()
		EndIf
		if (Game.GetPlayer().HasMagicEffectWithKeyword(chosenEffect))
			activate(self)
		endIf

	endEvent
endState

State allDone
	;do nothing
endState

