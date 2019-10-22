Scriptname JxsReanimation extends Actor  

Spell property reanimateSpell Auto          ; this is the special self-resurrection spell to use
objectReference property myTrigger auto     ; This is the reference we are waiting on to send an activate
 
Event OnActivate(ObjectReference akActionRef)
   ; I've been activated - see if was my trigger
   if (akActionRef == myTrigger)
      ; Cast a Reanimate spell on the Draugr
      reanimateSpell.Cast(Self, Self)
   EndIf
EndEvent
