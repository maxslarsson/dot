# Fish Shell Config
#
# Max Larsson

# put anything needed for a non-interactive shell before this
if not status --is-interactive
    exit 0
end

fish_vi_key_bindings

# Initialize the prompt - installed with brew
starship init fish | source
# Initialize fast navigator - alternate to z and fasd and autojump - installed with brew
zoxide init fish | source

# Initialize pyenv
pyenv init - | source
