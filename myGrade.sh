#!/bin/bash
#Student Name: Duy Pham
#Student Number: 040953368
#Course : 20S_CST8102_303
#Due Date : Aug 06 2020
#This program will calculate the final grade, and display the letter grade for course

echo -n "Enter mark of Assignments (from 0 to 40): " #message for user
read mark1 #read message from user
echo -n "Enter mark of Test1 (from 0 to 15): "
read mark2
echo -n "Enter mark of Test2 (from 0 to 15): "
read mark3
echo -n "Enter mark of Final Exam (from 0 to 30): "
read mark4

((TotalMark=$mark1+$mark2+$mark3+$mark4)) #declar Total = sum of mark

message="Your final numeric grade is "
letter="and your final letter grade is"

if [ $TotalMark -ge 90 ] #if TotalMark >= 90 
   then echo "$message $TotalMark, $letter A+" # message result for user
elif [ $TotalMark -ge 85 ]
   then echo "$message $TotalMark, $letter A"
elif [ $TotalMark -ge 80 ]
   then echo "$message $TotalMark, $letter A-"
elif [ $TotalMark -ge 77 ]
   then echo "$message $TotalMark, $letter B+"
elif [ $TotalMark -ge 73 ]
   then echo "$message $TotalMark, $letter B"
elif [ $TotalMark -ge 70 ]
   then echo "$message $TotalMark, $letter B-"
elif [ $TotalMark -ge 67 ]
   then echo "$message $TotalMark, $letter C+"
elif [ $TotalMark -ge 63 ]
   then echo "$message $TotalMark, $letter C"
elif [ $TotalMark -ge 60 ]
   then echo "$message $TotalMark, $letter C-"
elif [ $TotalMark -ge 57 ]
   then echo "$message $TotalMark, $letter D+"
elif [ $TotalMark -ge 53 ]
   then echo "$message $TotalMark, $letter D"
elif [ $TotalMark -ge 50 ]
   then echo "$message $TotalMark, $letter D-"
   else echo "$message $TotalMark, $letter F."
fi
echo "Good bye"  # End of program
