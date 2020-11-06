echo "please enter how much bill you wana enter"
read bill;
if [ ${#bill} == 0 ];
then
echo "please input a value";
else
(( valuebill = $bill - $bill ))
if [ $bill -eq $bill 2>/dev/null ];
then
echo " "
for (( lo=1; lo <= $bill;lo++ ));
do
echo "user no: $lo"
echo "please enter name of user";
read  name[$lo];
echo "enter acc no."
read acc[$lo];
echo "enter total units"
read units[$lo];
echo "enter acc type 'p' for personal and 'b' for bussines"
read acctype[$lo];
echo " "
done
for (( out =1; out <= $bill; out++ ));
do
if [[ ${acctype[out]} == 0 ]];
then
echo "please enter a acctype"
elif [[ ${acctype[out]} == b || ${acctype[out]} == p ]];
then
if [[ ${acctype[out]} == b ]]
then
((a =  ${units[out]} * 10 ))
echo "bill no: 000$out"
echo "your name: ${name[out]}";
echo "your acc no: ${acc[out]}";
echo "units consumed by you: ${units[out]}";
echo "account type: bussiness";
echo  "total charge for ${units[out]} units consumed by you: $a"
echo " "
fi
if [[ ${acctype[out]} == p && ${units[out]} -le 300 ]];
then
(( b = ${units[out]} * 25/10  ))
echo "bill no: 000$out"
echo "your name: ${name[out]}";
echo "your acc no: ${acc[out]}";
echo "units consumed by you: ${units[out]}";
echo "account type: personal";
echo "total charge for ${units[out]} units consumed by you: $b "
echo " "
elif [[ ${acctype[out]} == p  &&  ${units[out]} -le 500 ]];
then
(( c = ${units[out]} - 300  ))
(( d = c * 5 ))
(( e = 300 * 25/10 ))
(( f = e + d))
echo "bill no: 000$out"
echo "your name: ${name[out]}";
echo "your acc no: ${acc[out]}";
echo "units consumed by you: ${units[out]}";
echo "account type: personal";
echo "charge for first 300 units consumed: $e";
echo "charge for next $c units consumed: $d";
echo "totall charge for ${units[out]} units consumed by you: $f";
echo " "
elif [[ ${acctype[out]} == p  &&  ${units[out]} -ge 500 ]];
then
(( g = ${units[out]} - 500 ))
(( h = g * 10 ))
(( i = 300 * 25/10 ))
(( j = 200 * 5 ))
(( k = i + j + h ))
echo "bill no: 000$out"
echo "your name: ${name[out]}";
echo "your acc no: ${acc[out]}";
echo "units consumed by you: ${units[out]}";
echo "account type: personal";
echo "charge for first 300 units consumed: $i";
echo "charge for next 200 units consumed: $j";
echo "charge for next $g units consumed: $h";
echo "totall charge for ${units[out]} units consumed by you: $k ";
echo " "
fi
else
echo "bill no: 000$out"
echo "your name: ${name[out]}";
echo "your acc no: ${acc[out]}";
echo "units consumed by you: ${units[out]}";
echo "account type is not valid input by you ${acctype[out]}"
echo " "
fi
done
else
echo "please give a valid input";
fi
fi
