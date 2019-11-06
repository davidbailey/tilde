# alias
alias ls="ls -G"
alias grep="grep --color=auto"

alias generate_username="LC_CTYPE=C tr -dc [:alnum:] < /dev/urandom | head -c 128 && echo ''"
alias generate_password="LC_CTYPE=C tr -dc [:graph:] < /dev/urandom | head -c 128 && echo ''"
alias world_clock='TZ=America/Los_Angeles date "+Los Angeles %H:%M:%S  %A %B %d %Y" && TZ=America/New_York date "+New York    %H:%M:%S  %A %B %d %Y" && TZ=Europe/London date "+London      %H:%M:%S  %A %B %d %Y" && TZ=Asia/Hong_Kong date "+Hong Kong   %H:%M:%S  %A %B %d %Y" && TZ=Asia/Tokyo date "+Tokyo       %H:%M:%S  %A %B %d %Y"'

if [ -f /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession ]; then
   alias lockscreen="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
fi

if command -v nvim >/dev/null 2>&1; then
   alias vi=nvim
   alias vim=nvim
fi

# export
export HISTTIMEFORMAT="%d/%m/%y %T "
export HISTSIZE=1000000
export PS1="\[\e[0;32m\]\u@\H:\w 🐎  \$ \[\e[m\]"
export PATH="~/bin:$PATH"
export BASH_SILENCE_DEPRECATION_WARNING=1

# misc
complete -C aws_completer aws 

if [ -f /usr/local/etc/profile.d/autojump.sh ]; then
   source /usr/local/etc/profile.d/autojump.sh
fi

if [ -f ~/.bash_profile.secret ]; then
   source ~/.bash_profile.secret 
fi

if [ -f ~/Desktop/tilde/bash_profile ]; then
   source ~/Desktop/tilde/bash_profile
fi

# greeting
world_clock
figlet "what's up?" | cowsay -n | lolcat
