;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 4 Op-blocks world
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain BLOCKS)
  (:requirements :strips :typing :equality)
  (:types block)
  (:predicates (on ?x1 - block ?x2 - block)
	       (ontable ?x1 - block)
	       (clear ?x1 - block)
	       (handempty)
	       (holding ?x1 - block)
	       (end)
	       (tear)
			(tape)
			(rate)
			(pert)
			(reap)
			(aret)
			(peat)
			(pear)
			(arte)
			(rape)
			(pate)
			(rapt)
			(tare)
			(trap)
			(pare)
			(pater)
			(peart)
			(prate)
			(apter)
			(taper)
			(apert)
			(eat)
			(pet)
			(rat)
			(ape)
			(pea)
	       )

(:action pick-up
:parameters (?x1 - block)
:precondition (and
(clear ?x1)
(ontable ?x1)
(handempty)
)
:effect (and
(not (ontable ?x1))
(not (clear ?x1))
(not (handempty))
(holding ?x1)
)
)

(:action put-down
:parameters (?x1 - block)
:precondition (and
(holding ?x1)
)
:effect (and
(not (holding ?x1))
(clear ?x1)
(handempty)
(ontable ?x1)
)
)

(:action stack
:parameters (?x1 - block ?x2 - block)
:precondition (and
(holding ?x1)
(clear ?x2)
)
:effect (and
(not (holding ?x1))
(not (clear ?x2))
(clear ?x1)
(handempty)
(on ?x1 ?x2)
)
)

(:action unstack
:parameters (?x1 - block ?x2 - block)
:precondition (and
(on ?x1 ?x2)
(clear ?x1)
(handempty)
)
:effect (and
(holding ?x1)
(clear ?x2)
(not (clear ?x1))
(not (handempty))
(not (on ?x1 ?x2))
)
)


(:action tear
:parameters ()
:precondition (and
(not (end))
(on t e)
(on e a)
(on a r)
(clear t)
(ontable r)
)
:effect (and
(end)
(tear)
))

(:action tape
:parameters ()
:precondition (and
(not (end))
(on t a)
(on a p)
(on p e)
(clear t)
(ontable e)
)
:effect (and
(end)
(tape)
))

(:action rate
:parameters ()
:precondition (and
(not (end))
(on r a)
(on a t)
(on t e)
(clear r)
(ontable e)
)
:effect (and
(end)
(rate)
))

(:action pert
:parameters ()
:precondition (and
(not (end))
(on p e)
(on e r)
(on r t)
(clear p)
(ontable t)
)
:effect (and
(end)
(pert)
))

(:action reap
:parameters ()
:precondition (and
(not (end))
(on r e)
(on e a)
(on a p)
(clear r)
(ontable p)
)
:effect (and
(end)
(reap)
))

(:action aret
:parameters ()
:precondition (and
(not (end))
(on a r)
(on r e)
(on e t)
(clear a)
(ontable t)
)
:effect (and
(end)
(aret)
))

(:action peat
:parameters ()
:precondition (and
(not (end))
(on p e)
(on e a)
(on a t)
(clear p)
(ontable t)
)
:effect (and
(end)
(peat)
))

(:action pear
:parameters ()
:precondition (and
(not (end))
(on p e)
(on e a)
(on a r)
(clear p)
(ontable r)
)
:effect (and
(end)
(pear)
))

(:action arte
:parameters ()
:precondition (and
(not (end))
(on a r)
(on r t)
(on t e)
(clear a)
(ontable e)
)
:effect (and
(end)
(arte)
))

(:action rape
:parameters ()
:precondition (and
(not (end))
(on r a)
(on a p)
(on p e)
(clear r)
(ontable e)
)
:effect (and
(end)
(rape)
))

(:action pate
:parameters ()
:precondition (and
(not (end))
(on p a)
(on a t)
(on t e)
(clear p)
(ontable e)
)
:effect (and
(end)
(pate)
))

(:action rapt
:parameters ()
:precondition (and
(not (end))
(on r a)
(on a p)
(on p t)
(clear r)
(ontable t)
)
:effect (and
(end)
(rapt)
))

(:action tare
:parameters ()
:precondition (and
(not (end))
(on t a)
(on a r)
(on r e)
(clear t)
(ontable e)
)
:effect (and
(end)
(tare)
))

(:action trap
:parameters ()
:precondition (and
(not (end))
(on t r)
(on r a)
(on a p)
(clear t)
(ontable p)
)
:effect (and
(end)
(trap)
))

(:action pare
:parameters ()
:precondition (and
(not (end))
(on p a)
(on a r)
(on r e)
(clear p)
(ontable e)
)
:effect (and
(end)
(pare)
))

(:action pater
:parameters ()
:precondition (and
(not (end))
(on p a)
(on a t)
(on t e)
(on e r)
(clear p)
(ontable r)
)
:effect (and
(end)
(pater)
))

(:action peart
:parameters ()
:precondition (and
(not (end))
(on p e)
(on e a)
(on a r)
(on r t)
(clear p)
(ontable t)
)
:effect (and
(end)
(peart)
))

(:action prate
:parameters ()
:precondition (and
(not (end))
(on p r)
(on r a)
(on a t)
(on t e)
(clear p)
(ontable e)
)
:effect (and
(end)
(prate)
))

(:action apter
:parameters ()
:precondition (and
(not (end))
(on a p)
(on p t)
(on t e)
(on e r)
(clear a)
(ontable r)
)
:effect (and
(end)
(apter)
))

(:action taper
:parameters ()
:precondition (and
(not (end))
(on t a)
(on a p)
(on p e)
(on e r)
(clear t)
(ontable r)
)
:effect (and
(end)
(taper)
))

(:action apert
:parameters ()
:precondition (and
(not (end))
(on a p)
(on p e)
(on e r)
(on r t)
(clear a)
(ontable t)
)
:effect (and
(end)
(apert)
))

(:action eat
:parameters ()
:precondition (and
(not (end))
(on e a)
(on a t)
(clear e)
(ontable t)
)
:effect (and
(end)
(eat)
))

(:action pet
:parameters ()
:precondition (and
(not (end))
(on p e)
(on e t)
(clear p)
(ontable t)
)
:effect (and
(end)
(pet)
))

(:action rat
:parameters ()
:precondition (and
(not (end))
(on r a)
(on a t)
(clear r)
(ontable t)
)
:effect (and
(end)
(rat)
))

(:action ape
:parameters ()
:precondition (and
(not (end))
(on a p)
(on p e)
(clear a)
(ontable e)
)
:effect (and
(end)
(ape)
))

(:action pea
:parameters ()
:precondition (and
(not (end))
(on p e)
(on e a)
(clear p)
(ontable a)
)
:effect (and
(end)
(pea)
))



)
