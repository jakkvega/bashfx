
readarray -t initial_vars < <(declare -p | cut -d' ' -f3 | cut -d'=' -f1)



# When you want to list new variables
current_vars=($(declare -p | cut -d' ' -f3 | cut -d'=' -f1))

# Compare arrays and print new variables, excluding known shell variables
for var in "${current_vars[@]}"; do
    if [[ ! " ${initial_vars[*]} " =~ " $var " ]] && [[ ! $var =~ ^(COLUMNS|LINES|PIPESTATUS)$ ]]; then
        echo "$var"
    fi
done
