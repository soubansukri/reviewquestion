
init_bet=1
remaining_amount=100;
no_of_wins=0;
no_of_loss=0;
total_bets=0;

while [[ $remaining_amount -gt 0 && $remaining_amount -lt 200 ]]

do
	Bet=$((RANDOM%2));

	if [ $Bet -eq 1 ]
	then
		no_of_wins=$(($no_of_wins+1));
		remaining_amount=$(($remaining_amount+$init_bet));
		total_bets=$(($total_bets+1));
	else
      no_of_loss=$(($no_of_loss+1));
      remaining_amount=$(($remaining_amount-$init_bet));
      total_bets=$(($total_bets+1));

fi
done

echo "total_no_bets=" $total_bets
echo "total no of wins =" $no_of_wins
echo "total no of loss =" $no_of_loss

