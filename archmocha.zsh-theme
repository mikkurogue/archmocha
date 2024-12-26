# ~/.oh-my-zsh/themes/archmocha.zsh-theme

# Define Catppuccin Mocha colors
local mocha_blue="%F{38}"   # Light blue (Arch logo color)
local mocha_pink="%F{211}"  # Pink (username color)
local mocha_text="%F{249}"  # Light gray (path and symbols)

# Nerd Font Arch Linux logo
local arch_icon=""

# Prompt setup
PROMPT='${mocha_blue}${arch_icon} ${mocha_pink}%n@%m ${mocha_text}%~ >%f '


