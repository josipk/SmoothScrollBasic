0 foru=3to.step.
10 for i=7to.step-1:poke z,i:wait s,128,.:next:r=peek(g)
20 poke c,1:poke v,1:poke b,.:sys k:printchr$(20):poke h,r:next
40 ?chr$(147) : rem clear screen
50 poke 53270, 7: poke 56334,peek(56334)and256
65 s=53266:k=65520:z=53270:h=1103:g=1064:c=781:v=782:b=783
70 poke214,0:poke211,3:?"smooth scrolling text in basic"
80 goto .
90 rem run with: run 40
