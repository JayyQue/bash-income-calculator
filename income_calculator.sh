#!/bin/bash
clear

read -p "How many income sources do you have (1 or 2)? " num_incomes

if [ "$num_incomes" -eq 1 ]; then
    read -p "Please input your total monthly income after taxes & deductions: " monthly_income
    read -p "Please input your total amount of bills/expenses for the month: " monthly_expenses

    let "remaining_budget=monthly_income - monthly_expenses"
    echo "Based on the info you provided, your remaining budget for the month is: $remaining_budget"

elif [ "$num_incomes" -eq 2 ]; then
    read -p "Please input income source one: " first_source
    read -p "Please input income source two: " second_source

    let "monthly_income=first_source + second_source"

    read -p "Please input the total amount of bills/expenses for the month: " monthly_expenses

    let "remaining_budget=monthly_income - monthly_expenses"
    echo "Based on the info you provided, your remaining budget for the month is: $remaining_budget"

else
    echo "Invalid input. Please restart the script and enter 1 or 2."
    exit 1
fi
