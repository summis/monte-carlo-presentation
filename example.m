% Calculate winning probability with given dealer's first card and given policies.

DEALER_FIRST_CARD = 5;
DEALER_POLICY = 17;
PLAYER_POLICY = 15;
N = 1000000;

wins = 0;
draws = 0;
losses = 0;

for i = 1:N
    ret = blackjack(DEALER_FIRST_CARD, DEALER_POLICY, PLAYER_POLICY);
    if ret == 1
        wins = wins + 1;
    elseif ret == 0
        draws = draws + 1;
    else
        losses = losses + 1;
    end
end

fprintf("P(win) = %d\nP(draw) = %d\nP(loss) = %d\n", wins/N, draws/N, losses/N)