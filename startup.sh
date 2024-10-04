#!/bin/bash
#app directory
cd submission_reminder_app/scripts

# Run the reminder script
./reminder.sh

# is there any issue
if [ $? -eq 0 ]; then
  echo "Reminder app started successfully."
else
  echo "Failed to start the reminder app."
fi
