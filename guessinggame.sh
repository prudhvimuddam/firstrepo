function qwer
{
  flag=0
  while [[ $flag -eq 0 ]]
  do
    printf "\n guess no. of files:"
   read a
    nof=$(ls -l|egrep "^-"|wc -l)
    if [[ $a -eq $nof ]]
    then
      printf "\n congratulations"
      flag=1
      break
    else
      if [[ $a -lt $nof ]]
      then
          echo "too less"
      else
         echo "too high"
      fi
      
    fi
  done
}


qwer
