$ определить предикат mrg(L1, L2, R) который для двух отсортированных списков L1 и L2 
% определяет список R, составленный из этих элементов

mrg(A, [], A).
mrg([], B, B).

mrg([A|TA], [B|TB], [A|TM]) :-
	A =< B,
	mrg(TA, [B|TB], TM).
	
mrg([A|TA], [B|TB], [B|TM]) :-
	A > B,
	mrg([A|TA], TB, TM).