echo "Run traslation and solve for $1"

#DOMAIN= "firstTests/$1/$1-domain.pddl"
#PROBLEM= "firstTests/$1/$1-problem.pddl"

./plasp translate "firstTests/$1/$1-domain.pddl" "firstTests/$1/$1-problem.pddl" > "firstTests/$1/$1-clingoV.lp"


if [ $3 == "my" ] 
then
    clingo "firstTests/$1/$1-clingoV.lp" "myPlasp/myPlaspSolve.lp" -c horizon=$2 $4 $5
else
    clingo "firstTests/$1/$1-clingoV.lp" "myPlasp/copy.lp" -c horizon=$2 $3 $4
fi