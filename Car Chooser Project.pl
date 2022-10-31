%%Car Chooser


cartype(landcrozer,"Your car is: ").
cartype(mazdasix,"Your car is: ").
cartype(correla," car ").
cartype(rengerrover,"Your car is: ").
cartype(sonata,"Your car is: ").
cartype(mercedes,"Your car is: ").
cartype(mustang,"Your car is: ").
cartype(jeep,"Your car is: ").
cartype(innova,"Your car is: ").
cartype(patrol,"Your car is: ").


socialstat(married, landcrozer).
socialstat(single, mazdasix).
socialstat(single, correla).
socialstat(married, rengerrover).
socialstat(single, sonata).
socialstat(single, mercedes).
socialstat(single, mustang).
socialstat(married, jeep).
socialstat(married, innova).
socialstat(married, patrol).


size(big, landcrozer).
size(small, mazdasix).
size(small, correla).
size(big, rengerrover).
size(small, sonata).
size(small, mercedes).
size(small, mustang).
size(big, jeep).
size(big, innova).
size(big, patrol).


weather(hot,landcrozer).
weather(hot,mazdasix).
weather(hot,correla).
weather(hot,rengerrover).
weather(hot, sonata).
weather(moderat, mercedes).
weather(moderat, mustang).
weather(moderat, jeep).
weather(hot, innova).
weather(moderat, patrol).


roadtype(mountainous, landcrozer).
roadtype(highways, mazdasix).
roadtype(highways, correla).
roadtype(mountainous, rengerrover).
roadtype(highways, sonata).
roadtype(highways, mercedes).
roadtype(highways, mustang).
roadtype(mountainous, jeep).
roadtype(highways, innova).
roadtype(highways, patrol).


jobname(freework, landcrozer).
jobname(freework, mazdasix).
jobname(freework, correla).
jobname(government_employee, rengerrover).
jobname(government_employee, sonata).
jobname(government_employee, mercedes).
jobname(freework, mustang).
jobname(freework, jeep).
jobname(government_employee, innova).
jobname(government_employee, patrol).


budge(morehundredthousand, landcrozer).
budge(morehundredthousand, mazdasix).
budge(lesshundredthousand, correla).
budge(morehundredthousand, rengerrover).
budge(lesshundredthousand, sonata).
budge(morehundredthousand, mercedes).
budge(morehundredthousand, mustang).
budge(morehundredthousand, jeep).
budge(lesshundredthousand, innova).
budge(morehundredthousand, patrol).


specifi(normaluse, landcrozer).
specifi(normaluse, mazdasix).
specifi(normaluse, correla).
specifi(invensment, rengerrover).
specifi(normaluse, sonata).
specifi(invensment, mercedes).
specifi(invensment, mustang).
specifi(invensment, jeep).
specifi(normaluse, innova).
specifi(normaluse, patrol).




go:-
    write("What is your social status?"),nl ,
     write("a-married  b-single"),
    read(SOCIAL),
    
    write('what car size do you want?'),nl,
      write("a-big  b-small"),
    read(SIZE),
    
    write('What is your Usual country weather?'),nl,
     write("a-moderat b-hot"),
    read(WEARHER),
    
   write('What kind of Road do you go through every day?'),nl,
     write("a-highways b-mountainous"),
    read(ROAD),
    
    write('What is your job ?'),nl,
     write("a- government employee b-freework"),
    read(JOB),
    
    write('What is your rang budget ?'),nl,
     write("a-more than hundred thousand b-less than hundred thousand"),
    read(BUDGET),
    
   write('do you want your car?'),nl,
      write("a-normal use b-invensment"),
    read(SPECIFI),
    
    checkInput(SOCIAL, SIZE, SPECIFI,WEARHER, ROAD, JOB, BUDGET).
checkInput(SOCIAL, SIZE, SPECIFI,WEARHER, ROAD, JOB, BUDGET):-
     budge(BUDGET,CAR), size(SIZE,CAR),
    roadtype(ROAD,CAR), specifi(SPECIFI,CAR), 
    jobname(JOB,CAR), socialstat(SOCIAL,CAR),
    weather(WEARHER,CAR),
    cartype(CAR,R)
    ,write(R),write(CAR);write("sorry we don't find your perfect car, This Project contain 10 different car only in the future we will increase the number to fit your need") .