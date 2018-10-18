#!/usr/bin/env zsh
#local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

setopt promptsubst

autoload -U add-zsh-hook

# VCS
#YS_VCS_PROMPT_PREFIX1="%{$BG[017]$FG[015]%}"
#YS_VCS_PROMPT_PREFIX2="%{$FG[001]  %{$FG[015]%}"
#YS_VCS_PROMPT_SUFFIX="%{$reset_color%}"
#YS_VCS_PROMPT_DIRTY=" %{$FG[196]%}✗"
#YS_VCS_PROMPT_CLEAN=" %{$FG[010]%}✔︎"
# VCS
#YS_VCS_PROMPT_PREFIX1=""
#YS_VCS_PROMPT_PREFIX2=""
#YS_VCS_PROMPT_SUFFIX=""
#YS_VCS_PROMPT_DIRTY=""
#YS_VCS_PROMPT_CLEAN=""


setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
    '%F{17}%F{15}%K{17} %s  %b | %a %k%F{17}%f'
zstyle ':vcs_info:*' formats       \
    '%F{17}%F{15}%K{17} %s %F{1}%F{15} %b %k%F{17}%f'
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b:%r'

zstyle ':vcs_info:*' enable git cvs svn

# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}

#
R=$reset_color
YS_VCS_BG="%{$BG[017]%}"
YS_VCS_PROMPT_PREFIX1="%{$FG[017]%}$YS_VCS_BG{$FG[015]%}"
YS_VCS_PROMPT_PREFIX2="%{$FG[001]%}  %{$FG[015]%}"
YS_VCS_PROMPT_SUFFIX="%{$R%}%{$FG[017]%}%{$R%}"
YS_VCS_PROMPT_DIRTY=" %{$FG[196]%}✗"
YS_VCS_PROMPT_CLEAN=" %{$FG[010]%}✔︎"

# Git info.
local git_info='$(git_prompt_info)'
local git_status='$(git_prompt_status)'
local git_last_commit='$(git log --pretty=format:"%h \"%s\"" -1 2> /dev/null)'
ZSH_THEME_GIT_PROMPT_PREFIX="${YS_VCS_PROMPT_PREFIX1}git${YS_VCS_PROMPT_PREFIX2}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$YS_VCS_PROMPT_SUFFIX"
ZSH_THEME_GIT_PROMPT_DIRTY="$YS_VCS_PROMPT_DIRTY"
ZSH_THEME_GIT_PROMPT_CLEAN="$YS_VCS_PROMPT_CLEAN"
ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[082]%}✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[166]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[160]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[220]%}➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="{$FG[082]%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[190]%}✭%{$reset_color%}"


# HG info
local hg_info='$(ys_hg_prompt_info)'
ys_hg_prompt_info() {
	# make sure this is a hg dir
	if [ -d '.hg' ]; then
		echo -n "${YS_VCS_PROMPT_PREFIX1}hg${YS_VCS_PROMPT_PREFIX2}"
		echo -n $(hg branch 2>/dev/null)
		if [ -n "$(hg status 2>/dev/null)" ]; then
			echo -n "$YS_VCS_PROMPT_DIRTY"
		else
			echo -n "$YS_VCS_PROMPT_CLEAN"
		fi
		echo -n "$YS_VCS_PROMPT_SUFFIX"
	fi
}

battery_colors=( 124 160 202 208 214 220 226 190 154 046 040 034 028 022 )

#Battery info
local battery_info='$(get_battery_info)'
get_battery_color() {
    echo $battery_colors[$(( $1 * ($#battery_colors + 1) / 101))]
}
get_battery_info() {
   for p in /sys/class/power_supply/BAT* ; do
      val=$(cat $p/capacity)
      echo -n " %{$FG[$(get_battery_color $val)]%}"
      echo -n "$val"
      st=$(cat $p/status)
      if [[ $st == "Discharging" ]] ; then
         echo -n "%{$FG[001]%}↓"
      else
         echo -n "%{$FG[002]%}↑"
      fi
   done
}
      


BG_COL=$BG[000]
DATE_COL=$FG[006]
STDU_COL=$FG[002]
ROOT_COL=$FG[001]
USER_COL='%(!|%{$ROOT_COL%}|%{$STDU_COL%})'
PATH_COL=$FG[011]
ZSH_COL=$BG[001]$FG[015]

PROMPT="
%{$BG_COL%}\
%{$DATE_COL%}%D{%F %T} \
%{$USER_COL%}%n \
%{$PATH_COL%}%~/ \
%{$USER_COL%}%(!.#.$)>\
%{$R%}"

#RPROMPT="\
#$git_status\
#$git_info\
#\$(get_battery_info)\
#%{$R%}"


