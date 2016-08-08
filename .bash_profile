### BEGIN PRIVATE ###
## REMOVED FOR GIT ##
#### END PRIVATE ####

## ALIASES ##
alias ls="ls -G"
alias grep="grep --color=auto"
alias e="exit"
alias sortip="sort -n -t. -k1,1 -k2,2 -k3,3 -k4,4"
alias repeat_ifconfig="while sleep 1; do clear; ifconfig; done"
alias fixpwdump="iconv -f UTF-16 -t UTF-8 pwdump.txt > pwdump2.txt"
alias trafficdump="sudo tcpdump -nn -s0 -i eth0 -w dump.pcap"
alias lockscreen="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias generate_username="LC_CTYPE=C tr -dc [:alnum:] < /dev/urandom | head -c 128 && echo ''"
alias generate_password="LC_CTYPE=C tr -dc [:graph:] < /dev/urandom | head -c 128 && echo ''"
alias unixtimestamp="date +%s"
alias world_clock='TZ=America/Los_Angeles date "+Los Angeles: %H:%M:%S  %A %B %d %Y" && TZ=America/New_York date "+New York:    %H:%M:%S  %A %B %d %Y" && TZ=Europe/London date "+London:      %H:%M:%S  %A %B %d %Y" && TZ=Europe/Paris date "+Paris:       %H:%M:%S  %A %B %d %Y" && TZ=Asia/Hong_Kong date "+Hong Kong:   %H:%M:%S  %A %B %d %Y" && TZ=Asia/Tokyo date "+Tokyo:       %H:%M:%S  %A %B %d %Y"'
# config cisco switch: monitor session 1 dest int ge 5/48 ; monitor session 1 source int ge 12/39 both
# unconfig cisco switch: no monitor session 1

## BASH CONFIG OPTIONS ##
source /usr/local/Cellar/autojump/22.2.4/share/autojump/autojump.bash
export PATH=$PATH:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export HISTTIMEFORMAT="%d/%m/%y %T "
export HISTSIZE=1000000 # make bash_history really big
export PS1="\[\e[0;32m\]\u@\H:\w 🐎  \$ \[\e[m\]"

## GREETING ##
figlet "what's up?" | cowsay -n | lolcat
