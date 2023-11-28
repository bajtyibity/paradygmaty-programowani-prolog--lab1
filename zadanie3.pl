osoba(liz,tom,null,female,72).
osoba(pam,null,null,female,36).
osoba(tom,null,null,male,84).
osoba(bob,tom,pam,male,41).
osoba(pat,bob,null,male,25).
osoba(ann,bob,null,female,20).
osoba(jim,pat,null,male,3).
osoba(alicja,bob,null,female,23).
osoba(tomek,tom,pam,male,31).

rodzenstwo(A,A2):-osoba(A,B,C,_D,_E),
osoba(A2,B2,C2,_D2,_E2),
((B=B2,not(B=null));(C=C2,not(C=null))).

bracia(A,A2):-osoba(A,B,C,D,_E),
osoba(A2,B2,C2,D2,_E2),
((B=B2,not(B=null));(C=C2,not(C=null))),
D='male',
D2='male'.

siostry(A,A2):-osoba(A,B,C,D,_E),
osoba(A2,B2,C2,D2,_E2),
((B=B2,not(B=null));(C=C2,not(C=null))),
D=female,
D2=female.

brat(A,A2):-osoba(A,B,C,D,_E),
osoba(A2,B2,C2,_D2,_E2),
((B=B2,not(B=null));(C=C2,not(C=null))),
D=male.

siostra(A,A2):-osoba(A,B,C,D,_E),
osoba(A2,B2,C2,_D2,_E2),
((B = B2,not(B = null));(C = C2,not(C = null))),
D=female.
