# export
export BASH_SILENCE_DEPRECATION_WARNING=1
export HISTSIZE=1000000
export HISTTIMEFORMAT="%d/%m/%y %T "
export PATH="~/bin:$PATH"
export PS1="\[\e[0;32m\]\u@\H:\w 🐎  \$ \[\e[m\]"

# alias
alias generate_password="LC_CTYPE=C tr -dc [:graph:] < /dev/urandom | head -c 128 && echo ''"
alias generate_username="LC_CTYPE=C tr -dc [:alnum:] < /dev/urandom | head -c 128 && echo ''"
alias grep="grep --color=auto"
alias ls="ls -G"
alias world_clock='TZ=America/Los_Angeles date "+Los Angeles %H:%M:%S  %A %B %d %Y" && TZ=America/New_York date "+New York    %H:%M:%S  %A %B %d %Y" && TZ=Europe/London date "+London      %H:%M:%S  %A %B %d %Y" && TZ=Asia/Hong_Kong date "+Hong Kong   %H:%M:%S  %A %B %d %Y" && TZ=Asia/Tokyo date "+Tokyo       %H:%M:%S  %A %B %d %Y"'

if [ -f /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession ]; then
   alias lockscreen="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
fi

if [ -x "$(command -v nvim)" ]; then
   alias vi=nvim
   alias vim=nvim
fi

# complete
complete -C aws_completer aws 

# source
if [ -f /usr/local/etc/profile.d/autojump.sh ]; then
   source /usr/local/etc/profile.d/autojump.sh
fi

if [ -f ~/.bash_profile.secret ]; then
   source ~/.bash_profile.secret 
fi

# greeting
GREETING="what's up"

if [ -x "$(command -v figlet)" ]; then
   GREETING="$(figlet "$GREETING")"
fi

if [ -x "$(command -v cowsay)" ]; then
   GREETING="$(echo "$GREETING" | cowsay -n)"
fi

if [ -x "$(command -v lolcat)" ]; then
   GREETING="$(echo "$GREETING" | lolcat -f)"
fi

world_clock
echo "$GREETING"
