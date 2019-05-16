Scriptname JxsOnHitActivateIfKeywordMatches extends ObjectReference  

Keyword Property ChosenKeyword  Auto  

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)

	if(akSource.HasKeyword(ChosenKeyword))
	  Activate(akAggressor)
	endIf

EndEvent




int function SanitizeLockLevel(ObjectReference lock)
	int level = lock.GetLockLevel()
 
	if !lock.IsLocked()
		return 0
	endif
 
	if level == 0 || level == 1 ;novice
		return 1
	elseif level >= 2 && level <= 25 ;Apprentice
		return 2
	elseif level >= 26 && level <= 50 ;Adept
		return 3
	elseif level >= 51 && level <= 75 ;Expert
		return 4
	elseif level >= 76 && level <= 254 ;Master
		return 5
	else
		return 6
	endif
endfunction