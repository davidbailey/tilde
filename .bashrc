### BEGIN PRIVATE ###
## REMOVED FOR GIT ##
#### END PRIVATE ####

## COMMON COMMANDS ##
# install cpan modules: perl -MCPAN -e 'install HTML::Template'
# burn a cd: cdrecord -v -pad speed=4 dev=/dev/scd0 cd.iso
## ALIASES ##
#LINUX# alias ls="ls --color=auto"
#LINUX# alias grep="grep --color=auto"
alias e="exit"
alias sleepy="echo -n mem > /sys/power/state"
alias oo="openoffice.org"
alias fox="/opt/1.1-release/FoxitReader"
alias fixpwdump="iconv -f UTF-16 -t UTF-8 pwdump.txt > pwdump2.txt"
alias bright="sudo echo 70 > /proc/acpi/video/GFX0/DD02/brightness"
alias backfromchicago="sudo dpkg-reconfigure tzdata"
alias lc="wc -l"
alias sortip="sort -n -t. -k1,1 -k2,2 -k3,3 -k4,4"
alias repeat_ifconfig="while sleep 1; do clear; ifconfig; done"
alias apt-search="apt-cache search"
alias weather="~/bin/weather.py 93013 -lf2"
alias status="news.sh && scores.py && stocks.py && times.sh && weather"
## PROXIES ##
alias pxy-chromium-browser="chromium-browser --proxy-server=socks5://localhost:8888"
## TRAFFIC DUMP ##
alias trafficdump="sudo tcpdump -nn -s0 -i eth0 -w dump.pcap"
# config cisco switch: monitor session 1 dest int ge 5/48 ; monitor session 1 source int ge 12/39 both
# unconfig cisco switch: no monitor session 1
## PASSWORD AND USERNAME GENERATORS ##
genpasswd() {
        local l=$1
        [ "$l" == "" ] && l=63
        tr -dc [:graph:] < /dev/urandom | head -c ${l} 
        echo ""
}
genuser() {
        local l=$1
        [ "$l" == "" ] && l=63
        tr -dc [:alnum:] < /dev/urandom | head -c ${l} 
        echo ""
}
## AUTOJUMP ##
#LINUX# source /etc/profile.d/autojump.bash
## BASH CONFIG OPTIONS ##
export PATH=$PATH:/sbin:/usr/sbin:~/bin
export LANG=en_US.UTF-8
export TERM=xterm
HISTSIZE=1000000 # make bash_history really big
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
HISTCONTROL=ignoreboth
shopt -s histappend # append to the history file, don't overwrite it
shopt -s checkwinsize # check the window size after each command and, if necessary, update the values of LINES and COLUMNS
#LINUX# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#LINUX# . /etc/bash_completion
## GREETING ##
#LINUX# figlet "what's up?" | cowsay -n
