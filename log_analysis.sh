#!/bin/bash
# Version : 1.0
# ==========================================
read -p "Enter your login name :" login_name
if [ "$login_name" = "admin" ]
then
        read -p "Enter your Password :" password
        if [ "$password" = "P@ssw0rd" ]
        then
                echo "Welcome $login_name"
                read -p "Enter the Log file path :" log_file
                DATE=$(date +%Y-%m-%d)
                OUTPUT_FILE="/scripts/log_errors-${DATE}.log"
                if [[ ! -f "$log_file" ]]
                then
                        echo "the file "$log_file" not found "
                        exit 1
                else
                        echo "sart search a bout the "$log_file"...."
                        grep "error" "$log_file" >"$OUTPUT_FILE"
                        ERROR_COUNT=$(grep -ic "error" "$log_file")
                        echo "----------------------------------------"
                        echo "Operation completed successfully!"
                        echo "Total errors found: $ERROR_COUNT"
                        echo "Errors saved to: $OUTPUT_FILE"
                        echo "----------------------------------------"
                fi

        else
                echo "the password "$password" incorrect "
        fi
else
        echo "You are not admin (Permission denied)"    
fi
