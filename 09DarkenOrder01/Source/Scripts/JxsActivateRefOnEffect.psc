Scriptname JxsActivateRefOnEffect extends ObjectReference  

Keyword Property ChosenKeyword  Auto  
ObjectReference Property ToActivate  Auto  

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
	if(akSource.HasKeyword(ChosenKeyword))		
		;activate(akAggressor)
		ToActivate.activate(akAggressor)  	
	endIf
EndEvent




