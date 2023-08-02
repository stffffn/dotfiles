# vcs_info
# More info: https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

# Custom hook to display an indicator for untracked changes
# Copied from: https://github.com/zsh-users/zsh/blob/f9e9dce5443f323b340303596406f9d3ce11d23a/Misc/vcs_info-examples#L155-L170
# Slightly modified from 'hook_com[staged]' to 'hook_com[misc]' to be able to use '%m' in format
+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        hook_com[misc]+='%F{red} !'
    fi
}

# vcs_info Options
# More info: https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#Version-Control-Information
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%F{yellow} ✗'
zstyle ':vcs_info:*' stagedstr '%F{green} ✔'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
zstyle ':vcs_info:*' formats '%F{blue}%s:(%F{red}%b%F{blue}) [%m%u%c %F{blue}] '

# This is more or less a copy/adaption of the 'robbyrussel' theme of Oh-My-Zsh
# Original source: https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/robbyrussell.zsh-theme
INDICATOR="➜"
PROMPT='%B%(?.%F{green}${INDICATOR}.%F{red}${INDICATOR})  %F{cyan}%c ${vcs_info_msg_0_}%b%F{reset_color}'
