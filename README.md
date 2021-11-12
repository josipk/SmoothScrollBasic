# SmoothScrollBasic
Smooth scrolling text in Commodore BASIC

------------------------
#Initial code:

5 ?chr$(147) : rem clear screen
10 poke214,0:?:poke211,0:?"smooth scrolling text in basic"
20 r = peek(1064)
30 poke214,0:?:poke211,1:?chr$(20):poke 1103,r
40 forj=0to50:next
50 goto 20

------------------------
#Code with smooth scroll register:

5 ?chr$(147) : rem clear screen
10 poke214,0:?:poke211,0:?"smooth scrolling text in basic"
20 r = peek(1064)
40 for i=7to0step-1:poke 53270, i:wait 53265,128,0:next 
40 poke214,0:?:poke211,1:?chr$(20):poke 1103,r
50 poke 53270, 7: goto 20

------------------------
#Final optimized code:

0 foru=3to.step.
10 for i=7to.step-1:poke z,i:wait s,128,.:next:r=peek(g)
20 poke c,1:poke v,1:poke b,.:sys k:printchr$(20):poke h,r:next
40 ?chr$(147) : rem clear screen
50 poke 53270, 7: poke 56334,peek(56334)and256
65 s=53266:k=65520:z=53270:h=1103:g=1064:c=781:v=782:b=783
70 poke214,0:poke211,3:?"smooth scrolling text in basic"
80 goto .

Use: run 40
------------------------
