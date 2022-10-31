%%Car Chooser

% facts
car(landcrozer).
car(mazdasix).
car(correla).
car(rengerrover).
car(rengerrover).
car(sonata).
car(mercedes).
car(mustang).
car(jeep).
car(innova).
car(patrol).
car(modren).

size(small).
size(big).

social(married).
social(single).

job(government_employee).
job(freework).

weather(moderat).
weather(hot).

road(highways).
road(single).

budge(morehundredthousand).
budge(lesshundredthousand).

specifi(normaluse).
specifi(invensment).

%Rules 
cartype('landcrozer',SO,big,W,R,J,B,SB):- SO = (married) , W=(hot) , R=(mountainous),
    J=(freework),B=(morehundredthousand),SB=(normaluse),!.
cartype('mazdasix',SO,small,W,R,J,B,SB):- SO = single , W=(hot) , R=(highways),
    J=(freework),B=(morehundredthousand),SB=(normaluse),!.
cartype('correla',SO,small,W,R,J,B,SB):- SO = single , W=(hot) , R=(highways),
    J=(freework),B=(lesshundredthousand),SB=(normaluse),!.
cartype('rengerrover',SO,big,W,R,J,B,SB):- SO =married , W=(hot) , R=(mountainous),
    J=(government_employee),B=(morehundredthousand),SB=(invensment),!.
cartype('sonata',SO,small,W,R,J,B,SB):- SO =single  , W=(hot) , R=(highways),
    J=(government_employee),B=(lesshundredthousand),SB=(normaluse),!.
cartype('mercedes',SO,small,W,R,J,B,SB):- SO =single , W=(moderat) , R=(highways),
    J=(government_employee),B=(morehundredthousand),SB=(invensment),!.
cartype('mustang',SO,small,W,R,J,B,SB):-SO = single  , W=(moderat) , R=(highways),
    J=(freework),B=(morehundredthousand),SB=(invensment),!.
cartype('jeep',SO,big,W,R,J,B,SB):- SO =married , W=(moderat) , R=(mountainous),
    J=(freework),B=(morehundredthousand),SB=(invensment),!.
cartype('innova',SO,big,W,R,J,B,SB):- SO =married, W=(hot), R=(highways),
    J=(government_employee),B=(lesshundredthousand),SB=(normaluse),!.
cartype('patrol',SO,big,W,R,J,B,SB):-SO =married, W=(moderat), R=(highways),
    J=(government_employee),B=(morehundredthousand),SB=(normaluse),!.

cartype('unKnown car',_SO,big,_W,_R,_J,_B,_SB):-
    write('sorry we do not find your perfect car, This Project contain 10 different
           car only in the future we will increase the number to fit your need').

%goal
suggest(C) :- 
        write("What is your social status?"),nl ,
     write("a-married  b-single"),
    read(SO),
    
    write('What is your Usual country weather?'),nl,
     write("a-moderat b-hot"),
    read(W),
    
   write('What kind of Road do you go through every day?'),nl,
     write("a-highways b-mountainous"),
    read(R),
    
    write('What is your job ?'),nl,
     write("a- government employee b-freework"),
    read(J),
    
    write('What is your rang budget ?'),nl,
     write("a-more than hundred thousand b-less than hundred thousand"),
    read(B),
    
   write('do you want your car?'),nl,
      write("a-normal use b-invensment"),
    read(SP),
    cartype(C,SO,_,W,R,J,B,SP).