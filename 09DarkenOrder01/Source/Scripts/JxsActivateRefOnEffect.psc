Scriptname JxsActivateRefOnEffect extends ObjectReference  

Keyword Property ChosenKeyword  Auto  
ObjectReference Property ToActivate  Auto  

EVENT OnMagicEffectApply(ObjectReference akCaster, MagicEffect akEffect)

	if(akEffect.HasKeyword(ChosenKeyword))
		 ToActivate.activate(akCaster)  	
	endif

ENDEVENT

