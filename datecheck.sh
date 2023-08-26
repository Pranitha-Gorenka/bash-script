#! /bin/bash

if [ "$#" -ne 3 ]; then			#if argument count not equal to 3
		echo "INVALID INPUT: Enter Month Day Year"	#error message print
			exit 0
fi;


case $1 in		#switch case of months and days
	jan) days=31 ;;
	feb) days=28 ;;
	mar) days=31 ;;
	apr) days=30 ;;
	may) days=31 ;;
	jun) days=30 ;;
	jul) days=31 ;;
	aug) days=31 ;;
	sep) days=30 ;;
	oct) days=31 ;;
	nov) days=30 ;;
	dec) days=31 ;;
	*) days=-1 ;;
esac

case $1 in
	1) days=31 ;;
	2) days=28 ;;
	3) days=31 ;;
	4) days=30 ;;
	5) days=31 ;;
	6) days=30 ;;
	7) days=31 ;;
	8) days=31 ;;
	9) days=30 ;;
	10) days=31 ;;
	11) days=30 ;;
	12) days=31 ;;
	*) days=-1 ;;
esac


if [[ $1 -eq 2 || $1 -eq feb ]];	
then 			#checks leap year and days fo february

		if [[ $(($3 % 4)) -eq 0 ]];
			then
				while [[ $2 -le 29 ]]; do
					echo "EXISTS! $1 $2 $3 is someone's birthday.Its a leap year"
					exit
		        done
			else [[ $(($3 % 100)) != 0 ]];
					while [[ $2 -gt 28 ]]; do
						echo "BAD INPUT: $1 $3 does not have $2 days."
						exit
					done
																																						
						echo " EXISTS! $1 $2 $3 is someone's birthday.not a leap year"
						exit 	
			fi

				else 
					#checks maximum number of days 
					if [[ "$2" -ne "feb" && "$2" -gt "$days" ]];
					then
						echo "BAD INPUT: $1 does not have $2 days."
						exit 
					fi

						if [[ $(($3 % 4)) -eq 0 ]];	#checks leap year or not for remaining months
						then
							echo "EXISTS! $1 $2 $3 is someone's birthday.$3 leap year."
						else [[ $(($3 % 100)) != 0 ]];
							echo "EXISTS! $1 $2 $3 is someone's birthday.not a leap year"
													
						fi
fi

