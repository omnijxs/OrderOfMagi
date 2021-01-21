Scriptname JxsOnHitActivateIfKeywordMatches extends ObjectReference  

Keyword Property ChosenKeyword  Auto  

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
	if(akSource.HasKeyword(ChosenKeyword))
		self.blockActivation(false)
		activate(akAggressor)
		self.blockActivation()
	endIf
EndEvent

Event OnCellLoad()
	self.blockActivation()
endEvent


