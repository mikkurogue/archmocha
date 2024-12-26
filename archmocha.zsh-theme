# ~/.oh-my-zsh/themes/archmocha.zsh-theme

# Define Catppuccin Mocha colors
local mocha_blue="%F{38}"   # Light blue (Arch logo color)
local mocha_pink="%F{211}"  # Pink (username color)
local mocha_mauve="%F{135}"    # Mauve color
local mocha_lavender="%F{69}"  # Lavender color
local mocha_text="%F{249}"  # Light gray (path and symbols)
local mocha_red="%F{204}"   # Red (unsynced changes indicator)
local mocha_green="%F{120}" # Green (synced changes indicator)

# Nerd Font Arch Linux logo
local arch_icon=""

# Git status function
git_status() {
  # Get the current branch name
  local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [[ -n $branch ]]; then
    # Check for unpushed or unpulled commits
    local upstream=$(git rev-parse --symbolic-full-name --abbrev-ref @{u} 2>/dev/null)
    local ahead=$(git rev-list --count HEAD.."$upstream" 2>/dev/null)
    local behind=$(git rev-list --count "$upstream"..HEAD 2>/dev/null)

   # Check for untracked files
    local untracked=$(git ls-files --others --exclude-standard 2>/dev/null | wc -l)

    # Build the Git status string
    local git_info="on ${mocha_blue}${branch}${mocha_text}"
    [[ $ahead -gt 0 ]] && git_info+=" ${mocha_red}⇡${ahead}${mocha_text}"
    [[ $behind -gt 0 ]] && git_info+=" ${mocha_green}⇣${behind}${mocha_text}"
    [[ $untracked -gt 0 ]] && git_info+=" ${mocha_yellow}*${mocha_text}"
    echo -n " ${git_info}"
  fi
}

# Prompt setup
PROMPT='${mocha_blue}${arch_icon} ${mocha_mauve}%n${mocha_pink}@${mocha_lavender}%m ${mocha_text}%~$(git_statu
