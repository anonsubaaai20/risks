(define (problem p0)
(:domain blocks)
(:objects
p a t e r - block)

(:init
(HANDEMPTY)
(ONTABLE a)
(CLEAR a)
(ONTABLE p)
(CLEAR r)
(ON r p)
(ONTABLE e)
(CLEAR t)
(ON t e)
)

(:goal (and
(pert)
(pater)
(ape)
))
)
