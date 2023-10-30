#!/bin/bash

# Define the log file for storing occurrences
log_file="occurrences.log"

# Define the file to search in
file_to_search="your_file.txt"

# Define the string pattern to search for
search_pattern="your_pattern"

# Use grep to search for the pattern in the file and count the occurrences
count=$(grep -o -c "$search_pattern" "$file_to_search")

# Get the current date for the log entry
current_date=$(date "+%Y-%m-%d %H:%M:%S")

# Log the occurrences in the log file
echo "$current_date: The string '$search_pattern' occurs $count times in $file_to_search." >> "$log_file"

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

# Run logrotate to rotate the log file daily
logrotate -s /var/lib/logrotate/status /etc/logrotate.conf
