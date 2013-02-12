csession poc -U %SYS \n
d ^SECURITY \n
1 \n
1 \n
ad123 \n
User Name \n
Comment \n
welcome1 \n
welcome1 \n
\n
\n
yyyy-mm-dd exp date \n
rolename \n
\n
\n
\n
\n

repeat for next user

if done:

\n
\n
\n
h \n

echo "d ALL^%FREECNT\n\n\nh\n" | csession prd

echo "d ^SECURITY\n1\n1\njg222\nJohn Graber\nDBA\nwelcome1\nwelcome1\n\n\n\nepicuser\n\n\n\n\n\n\n\nh\n" | csession poc -U %SYS

echo "d ^SECURITY\n1\n1\njb258\nJim Benes\nCadence Contractor\nwelcome1\nwelcome1\n\n\n\nepicuser\n\n\n\n\n\n\n\nh\n" | csession ply -U %SYS