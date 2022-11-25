if status is-interactive
    # Commands to run in interactive sessions can go here
end
set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/.surrealdb $PATH

# Source Starship setup script
starship init fish | source

#Pfetch
pfetch
