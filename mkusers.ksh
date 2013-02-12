#!/bin/ksh

if [[ $# -eq 0 ]];then
   print "\nAt least one database must be specified.\n"
   print "Example:"
   print "\t mkusers.sh poc\n\n"
   exit
fi

if [ -e mkusers.log ]; then
	rm mkusers.log
fi

for DB in $*
do

	export DATABASE=$DB

	awk -f mkusers.awk users.csv > script.tmp

	chmod +x script.tmp

	./script.tmp >> mkusers.log
	print "\n*** preceding output for database "$DATABASE"\n\n" >> mkusers.log	

done

#rm script.tmp

#cat script.tmp

egrep "created|already" mkusers.log

echo
echo "See mkusers.log for details."
echo

