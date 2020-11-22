function rename_function
    functions --copy $argv[1] $argv[2]
    functions --erase $argv[1]
end
