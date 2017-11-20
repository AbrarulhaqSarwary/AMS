echo "Enter your name"
read studentName


echo "Enter your ID:"
read studentID


echo "Enter your gender"
read gender


echo "Enter your assignment mark ( 0 - 20 )"
read assignmentMark


while [ $assignmentMark -gt 20 ]
do 
echo "Invalid input, try again"
read assignmentMark
done

echo "Enter your lab participation mark ( 0 - 10 )"
read labMark


while [ $labMark -gt 10 ]
do 
echo "Invalid input, try again"

read labmarks
done

echo "Enter your quiz mark ( 0 - 10 )"
read quizMark

while [ $quizMark -gt 10 ]
do
echo "Invalid input, try again"
read quizMark
done

echo "Enter your midterm mark ( 0 - 30 )"
read midtermMark


while [ $midtermMark -gt 30 ]
do
echo "Invalid input, try again"
read midtermMark
done

echo "Enter your final mark ( 0 - 30 )"
read finalMark


while [ $finalMark -gt 30 ]
do
echo "Invalid input, try again"
read finalMark
done

echo " Marks Obtained"

total=`expr $assignmentMark + $labMark + $quizMark + $midtermMark + $finalMark`
echo $total
if [ $total -gt 90 ] && [ $total -lt 100 ]
then
echo "Grade = A"
echo "Grade = A ">>OSSGRADES.txt

fi
if [ $total -eq 90 ] 
then
echo "Grade = A-"
echo "Grade = A- ">>OSSGRADES.txt
elif
 [ $total -gt 80 ] && [ $total -lt 90 ]
then
echo "Grade = B"
echo "Grade = B ">>OSSGRADES.txt

elif [ $total -eq 80 ]
then
echo "Grade = B-"
echo "Grade = B- ">>OSSGRADES.txt

elif [ $total -gt 70 ] && [ $total -lt 80 ]
then
echo "Grade = C"
echo "Grade = C">>OSSGRADES.txt

elif [ $total -eq 70 ]
then
echo "Grade = C-"
echo "Grade = C- ">>OSSGRADES.txt\


elif [ $total -gt 60 ] && [ $total -lt 70 ]
then
grade= d
echo "$grade"
echo "$grade">>OSSGRADES.txt

elif [ $total -eq 60 ]
then
echo "Grade = D-"
echo "Grade = D-">>OSSGRADES.txt


elif [ $total -lt 60 ]
then
echo "Grade = F"	
echo "Grade = F">>OSSGRADES.txt

else
echo
"Invalid Input"
echo "Invalid Input ">>OSSGRADES.txt
fi

echo "$studentName	|	$studentID	|	$gender  |	$assignmentMark	|	$labMark	|	$quizMark	|	$midtermMark	|	$finalMark	|	$total	|" >>OSSGRADES.txt

     
