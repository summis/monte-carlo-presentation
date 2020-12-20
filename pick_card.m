function out = pick_card()
%pick_card - Card deck for Blackjack like game variant
%
% Syntax: out = pick_card()
%
% This function implements a card deck where every card that is taken
% from the deck is replaced with same card and deck is shuffled after
% replacement (probability for each card stays always the same). All face
% cards are considered to have value 10. Ace's value is considered to be 1.
out = randsample([1 2 3 4 5 6 7 8 9 10 10 10 10], 1);
 
end