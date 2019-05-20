#! /bin/bash

echo "THIS IS A GUESSING GAME...HEHE...ENJOY!"


number_of_files=$(ls | wc -l)


function your_guess {
       read -p " Please guess the number of files in the current directory: " guess
       while [ -z $guess ] #This will test whether the user didnot input anything.
       do
	   your_guess
       done   
}

your_guess 
while [ $guess -ne "$number_of_files" ]
do
    if [ $guess -gt "$number_of_files" ]
    then
	echo "Your guess is too high...try again!"

    else [ $guess -lt "$number_of_files" ]
	 echo "Your guess is too low...try again!" 
       
     fi

    your_guess
done

if [ $guess -eq "$number_of_files" ]
then
    echo "CONGATULATIONS WOW! CORRECT GUESS!"
    exit
else
    echo "loool that's not a letter honey.."
fi    
