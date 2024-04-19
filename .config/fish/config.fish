eval "$(/opt/homebrew/bin/brew shellenv)"
set -g fish_greeting
if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -x LANG en_US.UTF-8
starship init fish | source

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PNPM_HOME="/Users/evan/Library/pnpm"
source "$HOME/.cargo/env.fish"

alias k=kubectl
alias vim=nvim