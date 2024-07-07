#default prompt %n@%m %1~ %#
#for colour use %F{color}%f
#for underline %U %u 

#export PROMPT="%U%F{cyan}Fish%u-> %1~ %# %f"
export PATH="/usr/local/sbin:$PATH"


# Function to get the current git branch
parse_git_branch() {
   git branch 2>/dev/null | grep -e '^*' | sed 's/^* //'
}

# Set the prompt to include the git branch
setopt PROMPT_SUBST
PROMPT='%U%F{cyan}Fish%u-> %1~ %# %F{red}$(parse_git_branch)%f '
