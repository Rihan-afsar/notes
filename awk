awk is a scripting language, and it is helpful when working in the command line. 
It's also a widely used command for text processing.

When using awk, you are able to select data – one or more pieces of individual text – based on a pattern you provide.

For example, some of the operations you can do with awk are searching for a specific word or pattern in a piece of text given, or even select a certain line or a certain column in a file you provide.

--> The Basic Syntax of the awk command :

awk '{action}' your_file_name.txt
awk '{print $0}' file_name

-> If you would like each line to have a line-number count, you would use the NR built-in variable:

awk '{print NR,$0}' file_name 

-> When using awk, you can specify certain columns you want printed.

To have the first column printed, you use the command:

awk '{print $1}' information.txt

->To print more than one column, for example the first and forth columns, you would do:

awk '{print $1, $4}' information.txt

->> To print the last field (the last column), you can also use $NF which represents the last field in a record:

awk '{print $NF}' information.txt 

-->You can print a line that starts with a specific letter.

awk '/^r/' information.txt
#awk------------------------------------------------

#How to see column 2 or 3?
awk '{print $2}' file_name

#How to see multiple coulumns?
awk '{print $2,$3}' file_name

#How to see last column?
awk '{print $NF}' file_name

#How to see line no.?
awk '{print NR}' file_name

#How to see line no. with - ?
awk '{print NR "- " $2}' file_name

#How to get a column from CSV?
awk -F, '{print $7}' country.txt

#How to change the salary of Pol?
awk '{if($2=="Pol"){$3="90000"} print $0}' file_name

#How to see data of users whose salary is more than 40000?
awk '{if($3>40000) print $0}' file_name

#How to see a line whose length of character is more than 15?
awk 'length($0)>15' file_name

#How to see data of Indian users?
awk '/India/ {print}' file_name

#How to see a specific line example 3rd line?
awk 'NR==3 {print}' file_name

#How to see range of lines, 3 to 5th line?
awk 'NR==3,NR==5 {print}'

#How to see which lines are empty?
awk 'NF==0 {print NR}' file_name

#How to check no. of lines in the file?
awk 'END {print NR}' file_name

#How to use for loop in AWK command?
awk 'BEGIN {for(i=0;i<=10;i++) print i;}'

#How to use while loop in AWK command?
awk 'BEGIN {while(i<10){ i++; print "Num is " i;}}'
