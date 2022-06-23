!/bin/bash
read -p "Enter number of times to flip a combination:" no_of_flips

echo 
echo "SINGLET-COMBINATION"
declare -A singlet_frequency=( 

                                [H]=0
                                [T]=0

                              )
for(( flip = 1; flip <= no_of_flips; flip++ ))
do
    echo -n "Flip-$flip is "
    (( coin = RANDOM % 2 ))
    case $coin in 
        0)
            echo "Heads"
            (( singlet_frequency[H]++ ))
            ;;
        1)
            echo "Tails"
            (( singlet_frequency[T]++ ))
    esac
done
