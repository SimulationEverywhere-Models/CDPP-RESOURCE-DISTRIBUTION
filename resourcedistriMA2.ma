[top]
components : distri

[distri]
type : cell
dim  : (5,5,2)
delay : transport
defaultDelaytime : 100
border : wrapped
neighbors :                 distri(0,-1,0)  
neighbors : distri(-1,0,0)  distri(0,0,0)  distri(1,0,0)
neighbors :                 distri(0,1,0) 
neighbors :                 distri(0,-1,-1)
neighbors : distri(-1,0,-1)  distri(0,0,-1)  distri(1,0,-1)
neighbors :                 distri(0,1,-1)
initialvalue : 0
localtransition : random-strategy
zone : score { (0,0,1)..(4,4,1) }

[random-strategy]
rule : {  randint(1)  } 100 { t }

[score]
rule : { 12 } 100 {  (0,0,-1) = 0 and ( (1,0,-1) + (-1,0,-1) + (0,1,-1) + (0,-1,-1) ) = 0 }
rule : { 9 } 100 {  (0,0,-1) = 0 and ( (1,0,-1) + (-1,0,-1) + (0,1,-1) + (0,-1,-1) ) = 1 }
rule : { 6 } 100 {  (0,0,-1) = 0 and ( (1,0,-1) + (-1,0,-1) + (0,1,-1) + (0,-1,-1) ) = 2 }
rule : { 3 } 100 {  (0,0,-1) = 0 and ( (1,0,-1) + (-1,0,-1) + (0,1,-1) + (0,-1,-1) ) = 3 }
rule : { 0 } 100 {  (0,0,-1) = 0 and ( (1,0,-1) + (-1,0,-1) + (0,1,-1) + (0,-1,-1) ) = 4 }
rule : { 20 } 100 {  (0,0,-1) = 1 and ( (1,0,-1) + (-1,0,-1) + (0,1,-1) + (0,-1,-1) ) = 0 }
rule : { 16 } 100 {  (0,0,-1) = 1 and ( (1,0,-1) + (-1,0,-1) + (0,1,-1) + (0,-1,-1) ) = 1 }
rule : { 12 } 100 {  (0,0,-1) = 1 and ( (1,0,-1) + (-1,0,-1) + (0,1,-1) + (0,-1,-1) ) = 2 }
rule : { 8 } 100 {  (0,0,-1) = 1 and ( (1,0,-1) + (-1,0,-1) + (0,1,-1) + (0,-1,-1) ) = 3 }
rule : { 4 } 100 {  (0,0,-1) = 1 and ( (1,0,-1) + (-1,0,-1) + (0,1,-1) + (0,-1,-1) ) = 4 }


