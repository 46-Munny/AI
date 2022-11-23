name(john_fitzgerald_kennedy).
born_on(john_fitzgerald_kennedy,may_29_1917).
died_on(john_fitzgerald_kennedy,nov_22_1963).

%rule_for_lifespan
lifespan(X):-X is 1963-1917.
born_into(john_fitzgerald_kennedy,wealthy).
born_into(john_fitzgerald_kennedy,political_family).
born_into_place(john_fitzgerald_kennedy,brookline_massachusetts).
graduated_from(john_fitzgerald_kennedy,harvard_university).
graduated_in(john_fitzgerald_kennedy,y_1940).
graduated_before(john_fitzgerald_kennedy,joining_us_naval_reserve).
joined_us_naval_reserve(J):-J is 1940+1.


who_was_jfk(T):-referred_to_by(T,jfk).
referred_to_by('John Fitzgerald Kennedy',jfk).
was_an(john_fitzgerald_kennedy,american_politician).
served_as(john_fitzgerald_kennedy,president_of_united_states_35th).
served_at(john_fitzgerald_kennedy,height_of_the_cold_war).
presidency_started(john_fitzgerald_kennedy,year_1961).
presidency_ended(Y):-Y is 1961+3.
presidency_concerned_relationswith(john_fitzgerald_kennedy,soviet_union).
presidency_concerned_relationswith(john_fitzgerald_kennedy,cuba).
represented_massachusetts(john_fitzgerald_kennedy,both_houses_of_the_uscongress).
represented_massachusetts_as(john_fitzgerald_kennedy,memberofthe_kennedyfamily).
represented_massachusetts_as(john_fitzgerald_kennedy,a_democrat).


profession:-write('Do you want to know about John Fitzgerald Kennedy Profession?'),nl,read(yes),
            write('He was American politician of US 35th, also served at the height of Cold War,he also represented Massachusetts in both houses, at first he also joined at U.S Naval Reserve').

%rule_for_person
person_bio(john_fitzgerald_kennedy,X):-referred_to_by(john_fitzgerald_kennedy,X).
person_bio(john_fitzgerald_kennedy,X):-born_on(john_fitzgerald_kennedy,X).
person_bio(john_fitzgerald_kennedy,X):-died_on(john_fitzgerald_kennedy,X).
person_bio(john_fitzgerald_kennedy,X):-born_into(john_fitzgerald_kennedy,X).
person_bio(john_fitzgerald_kennedy,X):-graduated_from(john_fitzgerald_kennedy,X).
person_bio(john_fitzgerald_kennedy,X):-was_an(john_fitzgerald_kennedy,X).
person_bio(john_fitzgerald_kennedy,X):-served_as(john_fitzgerald_kennedy,X).

 
%read_write
about(john_fitzgerald_kennedy):-write('what do you want to know?'),read(born_info),write('born on may_29_1917,born into wealthy and political_family'),nl,
                                read(profession_info),write('president of united_states,democrat'),nl,
                                read(education),write('graduated_from_harvard_university,year_1940').



%n_factorial(0, 1).
%n_factorial(N, F) :-
        %N > 0,
        %N1 = N - 1,
        %F = N * F1,
        %n_factorial(N1, F1).