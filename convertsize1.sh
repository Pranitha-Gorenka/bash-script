#! /bin/bash

if [ "$#" -ne 1 ]; then		#if loop for invalid input
	  echo "Invalid input!! please give arguement as input."	
	    exit 1
	     fi ;
	      
	     while [ "$#" == 1 ]; do		# do-while loop for number & string field
		     value=$(echo $1 | grep -Eo "[[:digit:]]+")	
		     unit=$(echo $1 | tr -d [0-9])		
		     unit=${unit^^}

		     case $unit in		# switch case for conversion

			     B)
				     echo "Bytes = $value"
				     echo -n "Kilobytes = "
				     echo "scale=5;$value/1024" | bc
				     echo -n "Megabytes = "
				     echo "scale=5;$value/1024^2" | bc
				     echo -n "Gigabytes = "
				     echo "scale=5;$value/1024^3" | bc
				     ;;

			     KB)
				     echo -n "Bytes = "
				     echo "scale=5;$value*1024" | bc
				     echo -n "Kilobytes = "
				     echo "scale=5;$value" | bc
				     echo -n "Megabytes = "
				     echo "scale=5;$value/1024" | bc
				     echo -n "Gigabytes = "
				     echo "scale=5;$value/1024^2" | bc
				     ;;

			     MB)
				     echo -n "Bytes = "
				     echo "scale=5;$value*1024^2" | bc
				     echo -n "Kilobytes = "
				     echo "scale=5;$value*1024" | bc
				     echo -n "Megabytes = "
				     echo "scale=5;$value" | bc
				     echo -n "Gigabytes = "
				     echo "scale=5;$value/1024" | bc
				     ;;

			     GB)
				     echo -n "Bytes = "
				     echo "scale=5;$value*1024^3" | bc
				     echo -n "Kilobytes = "
				     echo "scale=5;$value*1024^2" | bc
				     echo -n "Megabytes = "
				     echo "scale=5;$value*1024" | bc
				     echo -n "Gigabytes = "
				     echo "scale=5;$value" | bc
				     ;;

			     *)
				     echo "Invalid choice"
				     ;;
		     esac 
		     exit
	     done


