PREFIX=""
BASE=$BLUE
LB="["
RB="]"
AT="@"
USER_AT_HOST="$BASE$LB$WHITE\u$BASE$AT$WHITE\h$BASE"
SUFFIX="$BASE$RB$WHITE\$ "

BRANCH_DIRTY=false

if ($GUI_TERM); then
	PREFIX="\[\e]0;\u@\h\a"
fi

if ($IS_ROOT); then
	BASE=$RED
fi

GIT_PS1_SHOWDIRTYSTATE=false
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true

echo $(git_branch_dirty)
PS1="$PREFIX$USER_AT_HOST$BASE\$(git_prefix)\$(git_branch_dirty_check -eq 0 && printf \"${RED}\" || printf \"${GREEN}\")\$(git_branch)\$(git_branch_untracked_check -eq 0 && printf \"${CYAN}\")\$(git_branch_untracked)\$(git_branch_stashed_check -eq 0 && printf \"${YELLOW}\")\$(git_branch_stashed)$SUFFIX"
export PS1