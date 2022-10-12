#Find a duplicate column in a column and return the value of another column
#!/bin/bash
DUPLICATE_UID=`cat etc-passwd-file | cut -d : -f3 | sort | uniq -d`

for ID in $DUPLICATE_UID
do
    USERS=`cat etc-passwd-file | grep ":$ID:" | cut -d : -f1`
    echo "for $ID :"
    echo "$USERS" 
done

