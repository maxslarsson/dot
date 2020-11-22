# Fish Shell Config
#
# Max Larsson

# put anything needed for a non-interactive shell before this
if not status --is-interactive
    exit 0
end


# Initialize the prompt - installed with brew
starship init fish | source
# Initialize fast navigator - alternate to z and fasd and autojump - installed with brew
zoxide init fish | source

# Rename the zoxide interactive cd selection function to match fasd and to be easier to type
rename_function zi zz
