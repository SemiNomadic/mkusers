BEGIN {

	# define field separator for comma delimited files
	FS = ", *"

	# create header for shell script (this only works in ksh)
	print("#!/usr/bin/ksh\n")

	database = ENVIRON["DATABASE"]

}

{ # for each line in the csv file, do the following

	# verify there are the expected number of fields
	if ( NF = 5 ) {
		printf("echo \"d ^SECURITY\\n1\\n1\\n%s\\n%s\\n%s\\nwelcome1\\nwelcome1\\n\\n\\n%s\\n%s\\n\\n\\n\\n\\n\\n\\n\\nh\\n\" | csession %s -U %SYS\n", $1, $2, $3, $4, $5, database)
	}
}

END {}
