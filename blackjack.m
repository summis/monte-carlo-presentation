function out = blackjack(dealer_first_card, dealer_policy, player_policy)
%blackjack - Play one game of Blackjack.
%
% Syntax: out = blackjack(dealer_first_card, dealer_policy, player_policy)
%
% dealer_first_card: First cart of dealer that is visible also to the player.
% dealer_policy: When sum of dealer's cards is above this threshold, dealer
% doesn't pick new cards.
% player policy: When sum of player's cards is above this threshold, player
% doesn't pick new cards.
% out: returns 1, if player wins, 0 if game is draw and -1 if dealer wins.

player_sum = pick_card() + pick_card();

while player_sum < player_policy
    player_sum = player_sum + pick_card();
end

dealer_sum = dealer_first_card + pick_card();

while dealer_sum < dealer_policy
    dealer_sum = dealer_sum + pick_card();
end

if player_sum > 21
    out = -1;
elseif dealer_sum > 21
    out = 1;
elseif player_sum > dealer_sum
    out = 1;
elseif player_sum == dealer_sum
    out = 0;
else
    out = -1;
end

end