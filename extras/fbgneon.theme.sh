#! bash oh-my-bash.module
# This is combination of works from two different people which I combined for my requirement.
# Original PS1 was from reddit user /u/Allevil669 which I found in thread: https://www.reddit.com/r/linux/comments/1z33lj/linux_users_whats_your_favourite_bash_prompt/
# I used that PS1 to the bash-it theme 'morris', and customized it to my liking. All credits to /u/Allevil669 and morris.
#
# prompt theming

_omb_module_require plugin:battery

# FBG Colors
_fbg_purple='\[\033[1;38;5;93m\]'
_fbg_green='\[\033[1;38;5;47m\]'
_fbg_orange='\[\033[1;38;5;202m\]'
_fbg_pink='\[\033[1;38;5;200m\]'

# FBG Theme functions
function _fbg_prompt_info() {
  if [[ "$OMB_GIT_SHOW_BRANCH" == "false" ]]; then return 0; fi

  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return 0

  if [[ "$OMB_GIT_SHOW_DIRTY" == "false" ]]; then
    printf "%b%b%b" "$SCM_THEME_PROMPT_PREFIX" "$branch" "$SCM_THEME_PROMPT_SUFFIX"
  else
    local is_dirty
    if git diff-index --quiet HEAD -- 2>/dev/null; then
      is_dirty=$SCM_THEME_PROMPT_CLEAN
    else
      is_dirty=$SCM_THEME_PROMPT_DIRTY
    fi
    printf "%b%b%b%b" "$SCM_THEME_PROMPT_PREFIX" "$branch" "$is_dirty" "$SCM_THEME_PROMPT_SUFFIX"
  fi
}

function _omb_theme_PROMPT_COMMAND() {
  local status=$?

  # added TITLEBAR for updating the tab and window titles with the pwd
  local TITLEBAR
  case $TERM in
  xterm* | screen)
    TITLEBAR=$'\1\e]0;'$USER@${HOSTNAME%%.*}:${PWD/#$HOME/~}$'\e\\\2' ;;
  *)
    TITLEBAR= ;;
  esac

  local SC
  if ((status != 0)); then
    SC="$_omb_prompt_bold_teal[${_omb_prompt_bold_red}$status$_omb_prompt_bold_teal]";
  fi

  local BC=$(battery_percentage)
  [[ $BC == no && $BC == -1 ]] && BC=
  BC=${BC:+${_omb_prompt_teal}-${_omb_prompt_green}($BC%)}

  local python_venv
  _omb_prompt_get_python_venv

  # PS1=$TITLEBAR"\n${_omb_prompt_teal}┌─${_omb_prompt_bold_teal}[${_fbg_purple}\u${_omb_prompt_bold_teal}][${_fbg_purple}\h${_omb_prompt_bold_teal}]${_omb_prompt_teal}─${_fbg_green}(\w)$(scm_prompt_info)$python_venv\n${_omb_prompt_teal}└─$SC$BC${_omb_prompt_bold_teal}[${_fbg_green}\$${_omb_prompt_bold_teal}]${_omb_prompt_white} "
  PS1=$TITLEBAR"\n${_omb_prompt_teal}┌─${_omb_prompt_bold_teal}[${_fbg_purple}\u${_omb_prompt_bold_teal}][${_fbg_purple}\h${_omb_prompt_bold_teal}]${_omb_prompt_teal}─${_fbg_green}(\w)${_omb_prompt_bold_teal}$(_fbg_prompt_info)$python_venv\n${_omb_prompt_teal}└─$SC$BC${_omb_prompt_bold_teal}[${_fbg_green}\$${_omb_prompt_bold_teal}]${_omb_prompt_white} "
}

# scm theming
SCM_THEME_PROMPT_DIRTY=" ${_omb_prompt_brown}✗"
SCM_THEME_PROMPT_CLEAN=" ${_omb_prompt_bold_green}✓"
SCM_THEME_PROMPT_PREFIX="${_omb_prompt_bold_teal}("
SCM_THEME_PROMPT_SUFFIX="${_omb_prompt_bold_teal})${_omb_prompt_reset_color}"

OMB_PROMPT_SHOW_PYTHON_VENV=${OMB_PROMPT_SHOW_PYTHON_VENV:-false}
OMB_PROMPT_VIRTUALENV_FORMAT="${_omb_prompt_bold_gray}(%s)${_omb_prompt_reset_color}"
OMB_PROMPT_CONDAENV_FORMAT="${_omb_prompt_bold_gray}(%s)${_omb_prompt_reset_color}"

_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
