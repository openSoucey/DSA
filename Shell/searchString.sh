#!/bin/bash

# Define the file to search in
file_to_search="your_file.txt"

# Define the string pattern to search for
search_pattern="your_pattern"

# Use grep to search for the pattern in the file and count the occurrences
count=$(grep -o -c "$search_pattern" "$file_to_search")

# Email settings
recipient_emails=("recipient1@example.com" "recipient2@example.com")
sender_email="sender@example.com"
email_subject="Pattern Occurrence Alert"
email_body="The string '$search_pattern' occurs $count times in $file_to_search."

# Send the email alert
for recipient in "${recipient_emails[@]}"; do
  echo -e "$email_body" | mail -s "$email_subject" -a "From: $sender_email" "$recipient"
done

echo "Email alert sent to ${recipient_emails[@]}"
