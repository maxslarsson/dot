function path --description 'A convenience function to edit the path'
    switch $argv[1]
        case add
            set -Up fish_user_paths $argv[2..-1]
        case remove 
            for arg in $argv[2..-1]
                # The "--" here is to protect from arguments or $PATH components that start with "-"
                set -l argIndex (contains -i -- $arg $PATH)
                # If the contains call fails, it returns nothing, so $index will have no elements
                # (all variables in fish are lists)
                if set -q argIndex[1]
                    set -e PATH[$argIndex]
                else
                    return 1
                end
            end
        case '*'
            string join \n $PATH | nl
    end
end
