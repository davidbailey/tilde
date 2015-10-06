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
# config cisco switch: monitor session 1 dest int ge 5/48 ; monitor session 1 source int ge 12/39 both
# unconfig cisco switch: no monitor session 1
# alias sleepy="echo -n mem > /sys/power/state"
# alias oo="openoffice.org"
# alias fox="/opt/1.1-release/FoxitReader"
# alias bright="sudo echo 70 > /proc/acpi/video/GFX0/DD02/brightness"
# alias backfromchicago="sudo dpkg-reconfigure tzdata"
# alias apt-search="apt-cache search"
# alias weather="~/bin/weather.py 93013 -lf2"
# alias status="news.sh && scores.py && stocks.py && times.sh && weather"
# alias pxy-chromium-browser="chromium-browser --proxy-server=socks5://localhost:8888"
# alias burncd="cdrecord -v -pad speed=4 dev=/dev/scd0 cd.iso"
# alias install-cpan-module="perl -MCPAN -e 'install HTML::Template'""

## BASH CONFIG OPTIONS ##
source /usr/local/Cellar/autojump/22.2.4/share/autojump/autojump.bash
export PATH=$PATH:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:~/Library/Python/2.7/bin
export HISTTIMEFORMAT="%d/%m/%y %T "
export HISTSIZE=1000000 # make bash_history really big
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups #delete HISTTIMEFORMAT if you're going to use this.
# export HISTCONTROL=ignoreboth
# export LANG=en_US.UTF-8
# export TERM=xterm-256color
# shopt -s histappend # append to the history file, don't overwrite it
# shopt -s checkwinsize # check the window size after each command and, if necessary, update the values of LINES and COLUMNS
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# . /etc/bash_completion

## PASSWORD AND USERNAME GENERATORS ##
genpasswd() {
  export LC_ALL=C
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

## GREETING ##
figlet "what's up?" | cowsay -n
