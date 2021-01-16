
Scriptname JxsActivateFriendOnHitOnce extends ObjectReference  

ObjectReference Property Friend Auto 

auto STATE active

	EVENT OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, Bool abPowerAttack, Bool abSneakAttack, Bool abBashAttack, Bool abHitBlocked)
		Friend.activate(akAggressor)  
		gotoState("done")
	EndEVENT

	EVENT OnActivate(ObjectReference akActionRef)
		gotoState("done")
	EndEVENT 

endSTATE

STATE done
	;done
endSTATE	
