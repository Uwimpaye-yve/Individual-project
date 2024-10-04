#!/bin/bash
# create a directory structure
mkdir -p submission_reminder_app/{scripts,config,logs}

#create reminder.sh file
cat << 'EOF' > submission_reminder_app/scripts.reminder.sh

#!/bin/bash
# Logic to send reminders to students about submissions
source ../config/functions.sh

while IFS=, read -r student_id submission_date
do
  send_reminder "$student_id" "$submission_date"

#create function.sh file
cat << 'EOF' > submission_reminder_app/config/functions.sh
#!/bin/bash
# Define the reminder function
# Createconfig.env file
cat << 'EOF' > submission_reminder_app/config/config.env
# Configuration for the reminder app
ADMIN_EMAIL=admin@school.com
REMINDER_INTERVAL_DAYS=3
EOF

# Add 5 more student records to submissions.txt
echo -e "\n12345,2024-10-05\n23456,2024-10-10\n34567,2024-10-15\n45678,2024-10-20\n56789,2024-10-25" >> submissions.txt

# Create empty log file
touch submission_reminder_app/logs/reminder.log

echo "Environment setup complete."
