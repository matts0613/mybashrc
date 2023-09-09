# .bashrc
#this one is for DEBIAN ONLY


# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# WINDOWS Compatible
# allows you to choose from over 125 themes for your terminal
alias gogh='bash -c  "$(wget -qO- https://git.io/vQgMr)"'


# WINDOWS Compatible
#upgrades apt packages
alias upgrade='sudo apt-get upgrade -y && sudo apt autoremove -y'

#different package manager
#alias upgrade='sudo dnf upgrade -y'

# WINDOWS Compatible
#install apt package
alias agi='sudo apt-get install'

#different package manager
#alias install='sudo dnf install -y'

# WINDOWS Compatible
# updates apt packages
alias update='sudo apt-get update'
#alias update='sudo dnf update'

# WINDOWS Compatible
# search aptpackages
alias asearch='sudo apt-cache search'

#different package manager
#alias search='sudo dnf search'

# WINDOWS Compatible
# remove apt packages
alias agr='sudo apt-get remove'

# WINDOWS Compatible
# shutdown computer
alias shutdown='sudo shutdown –h now'

# WINDOWS Compatible
# reboot computer
alias reboot='sudo systemctl restart -i'

# lock computer screen
#alias lock='gnome-screensaver-command --lock'

# opens file explorer
#alias explore='explorer .'

# WINDOWS Compatible
# opens a windows explorer window in current directory
alias explorer='explorer.exe .'


# opens file explorer as root
#alias suexplore='sudo explorer .'

# opens a file - usage = open *link to file*
#alias open='gnome-open'

# WINDOWS Compatible
# clones a github repo
alias clone='git clone'

# displays public ip in terminal
#alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

# WINDOWS Compatible
# windows ip
alias ip='curl -kLs "http://api.ipify.org"'

# WINDOWS Compatible
# gets ip address and geolocation in one command
alias ipgeo='$myip | curl ipinfo.io/$myip'

# makes you sudo for terminal session
alias rooot='sudo -l'

# WINDOWS Compatible
# removes a file in dir - usage = rm *filename* then type y and enter
alias rm='rm -i'

# WINDOWS Compatible
# show some
alias la='ls -A --color=auto'

# WINDOWS Compatible
# shows all files, even hidden ones
alias sall='ls -a --color=auto'

# WINDOWS Compatible
# installs in main dir
alias suh='sudo -H'

# WINDOWS Compatible
# alphabetical sort
alias labc='ls -lap --color=auto'


# completely wipes entire computer
alias wipewholecomputer='dd if=/dev/urandom of=/dev/hda'

# WINDOWS Compatible
# downloads site using wget
alias wgetsite="wget -rmkEpSk -e robots=off --random-wait -U mozilla"

# WINDOWS Compatible
# copies current directory to clipboard
alias cpwd='pwd | xclip -selection clipboard'

# WINDOWS Compatible
# shows available memory on hdd
alias df='df -h'

# WINDOWS Compatible
# untar tar.gz file
alias untar='tar -zxvf'

# WINDOWS Compatible
# pings server
alias ping='ping -c 5'

# faster ping
#alias fastping='ping -c 100 -s.2'

# WINDOWS Compatible
# displays current date in terminal
alias date='date +"%m-%d-%Y"'

# WINDOWS Compatible
# list only directories
alias lsd='ls -h -b --color=auto -d */'     

# creates and opens a webserver at localhost:9000 in chrome
#alias www='python -m SimpleHTTPServer 8069 | google-chrome http://localhost:8069'

# WINDOWS Compatible
# windows version of above script
#alias wwww='python -m SimpleHTTPServer 8888 | cygstart "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" http://localhost:8888'

# opens synaptic package manager
#alias synaptic='sudo synaptic'

# sets python3.6 as default python3
# alias python3="python3.6"

# copy script output to clipboard
#alias clipboard='xclip -selection clipboard'

#  some more ls aliases below
# WINDOWS Compatible
# shows all + hidden files, using a long listing format + classify
alias ll='ls -alF --color=auto'

# WINDOWS Compatible
# list files in column and classify
alias l='ls -CF --color=auto'

# WINDOWS Compatible
# goes back one directory
alias ..='cd ..'

#goes back two directories, etc...
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# WINDOWS Compatible
#displays the ports on computer
alias ports='netstat -tulanp'

#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# WINDOWS Compatible
#displays grep commands in color
alias grep='grep --color=auto --exclude-dir=\.svn'

# WINDOWS Compatible
# opens calculator in terminal
alias calc='bc -l'

# WINDOWS Compatible
# gets computer cpu info
alias cpuinfo='lscpu'

# WINDOWS Compatible
# get current directory
alias dir='echo $PWD'

# alias python3='py -3.7'
# alias python3='py -3.7.4'

# WINDOWS Compatible
# restarts bashrc with rc
alias rc="source ~/.bashrc"

# WINDOWS Compatible
# Shortcut for apt-cyg install
# alias aci='apt-cyg install'

# WINDOWS Compatible
# update apt-cyg
# alias acu='apt-cyg update'

# WINDOWS Compatible
# gets size of current dir
alias dirsz='du -h --max-depth=1'

# WINDOWS Compatible
#sets permission of directory - need inputs 
alias cx="chmod +x"

# WINDOWS Compatible
#gets you a weather display in your terminal
alias weather='curl wttr.in/'

# WINDOWS Compatible
#gets just the mp3 audio from a youtube video and saves it
alias getmp3="youtube-dl -x --audio-format mp3 "

# WINDOWS Compatible
#mirrors a website for offline archiving a different way than above
alias mirror='wget -m -r -np -p -k -E'

# WINDOWS Compatible
#clears everything from terminal
alias c='clear'

# system
alias tchau='shutdown -h now'
alias kname='killall'
alias kprocess='kill -9'
alias reboot='systemctl reboot -i'


alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias requirements='pip3 install -r requirements.txt' 

alias toron='systemctl start tor.service'
alias toroff='systemctl stop tor.service'
alias serve='python -m SimpleHTTPServer'
alias ports2='sudo netstat -tulanp'

alias cx='chmod +x'

alias whereami='pwd'

alias weather='curl wttr.in/sarasota'

alias dealwithit="echo '(•_•)' ; echo '( •_•)>⌐■-■' ; echo '(⌐■_■)' ; sleep 1 ; echo '(▀̿Ĺ̯▀̿ ̿)'"

alias brb='sudo reboot'

#repeats last command
alias r='echo 'repeating'; fc -e -'


alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias count='ls | wc -l'


alias newfile='touch newfile.txt'
alias calculator='bc'
alias calc='calculator'


alias please='sudo'
alias pls='sudo'


alias header='curl -I'
 
# find out if remote server supports gzip / mod_deflate or not #
alias headerc='curl -I --compress'


## pass options to free ##
alias meminfo='free -m -l -t'

alias top="htop"

alias myip2="curl http://ipecho.net/plain; echo"


## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'


alias bashv='bash --version'

alias tree='tree --dirsfirst -F'

# Make a directory and all parent directories with verbosity.
alias mkdir='mkdir -p -v'

alias ka="killall"
alias lc='locate -i'

alias tzt="tar -tzvf "
alias tz="tar -xzvf "
alias tjt="tar -tjvf "
alias tj="tar -xjvf "


#sort by file size
alias lt='ls --human-readable --size -1 -S --classify'

#sort my modified time
alias left='ls -t -1'

alias www='python2 -m SimpleHTTPServer'

alias websiteget="wget --random-wait -r -p -e robots=off -U mozilla"

alias genpasswd="strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d 'n'; echo" 

alias cpwd='pwd | xclip -selection clipboard'

# WINDOWS Compatible
# shows available memory on hdd
alias df='df -h'

# WINDOWS Compatible
# untar tar.gz file
alias untar='tar -zxvf'

# WINDOWS Compatible
# pings server
alias ping='ping -c 5'

# faster ping
alias fastping='ping -c 100 -s.2'

# WINDOWS Compatible
# displays current date in terminal
alias date='date +"%m-%d-%Y"'

# creates and opens a webserver at localhost:9000 in chrome
alias www='python -m SimpleHTTPServer 8069 | google-chrome http://localhost:8069'


alias root='sudo -i'
alias s='sudo "$BASH" -c "$(history -p !!)"'
alias sl='sl -ael'
alias su='sudo -i'

alias pip='pip2'
alias pip3='pip3'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias crone='sudo vim /etc/crontab'
alias totalusage='df -hl --total | grep total'
alias most='du -hsx * | sort -rh | head -10'

#  some more ls aliases below
# WINDOWS Compatible
# shows all + hidden files, using a long listing format + classify
alias ll='ls -alF --color=auto'

# WINDOWS Compatible
# list files in column and classify
alias l='ls -CF --color=auto'



#alias for youtube-dl all options
alias youtube-dl='youtube-dl -i --write-sub --write-auto-sub --sub-lang en --embed-subs'


#soft-reboot the computer
alias res='kill -9 -1'

alias freshclam='sudo freshclam'


# Alias's for multiple directory listing commands
# alias la='ls -Alh' # show hidden files
# alias ls='ls -aFh --color=always' # add colors and file type extensions
# alias lx='ls -lXBh' # sort by extension
# alias lk='ls -lSrh' # sort by size
# alias lc='ls -lcrh' # sort by change time
# alias lu='ls -lurh' # sort by access time
# alias lr='ls -lRh' # recursive ls
# alias lt='ls -ltrh' # sort by date
# alias lm='ls -alh |more' # pipe through 'more'
# alias lw='ls -xAh' # wide listing format
# alias ll='ls -Fls' # long listing format
# alias labc='ls -lap' #alphabetical sort
# alias lf="ls -l | egrep -v '^d'" # files only
# alias ldir="ls -l | egrep '^d'" # directories only

# To see if a command is aliased, a file, or a built-in command
alias checkcommand="type -t"

# Alias's for safe and forced reboots
# alias rebootsafe='sudo shutdown -r now'
# alias rebootforce='sudo shutdown -r -n now'



# Show all logs in /var/log
alias logs="sudo find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"


# Count all files (recursively) in the current folder
alias countfiles="for t in files links directories; do echo \`find . -type \${t:0:1} | wc -l\` \$t; done 2> /dev/null"

# Show current network connections to the server
alias ipview="netstat -anpl | grep :80 | awk {'print \$5'} | cut -d\":\" -f1 | sort | uniq -c | sort -n | sed -e 's/^ *//' -e 's/ *\$//'"


# Show all logs in /var/log
alias logs="sudo find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"






# random nmap commands
alias nsub='nmap --script dns-brute --script-args dns-brute.domain=$URL,dns-brute.threads=6 -vv -oN scan'
alias nall='nmap -F -iL scan --open -oN nall'
alias nu='nmap -F $URL -v'
alias sub='subfinder -d $URL -o scan'
alias n='nmap -F -v'




# History commands
alias h1="history 10"
alias h2="history 20"
alias h3="history 30"

# System state
#alias reboot="sudo /sbin/reboot"
#alias poweroff="sudo /sbin/poweroff"

#alias myip='ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2'

#_______________________________________________________________________________
#functions

# WINDOWS Compatible
#clears terminal and returns to ~
function cdclear { cd ~; clear;}

# Transform the arguments into a valid url querystring
urlencode()
{
  local args="$@"
  jq -nr --arg v "$args" '$v|@uri'; 
}



# Query duckduckgo
duckduckgo()
{
  lynx "https://lite.duckduckgo.com/lite/?q=$(urlencode "$@")"
}

find-largest-files() {
    if [[ $# -ne 1 ]]; then
        echo "Usage: find-largest-files <directory>"
    else
        largest=$(find "$1" -type f -printf '%s\n' | sort -rn | head -1)
        if (( largest < 1024 )); then
            unit="B"
            divisor=1
        elif (( largest < 1048576 )); then
            unit="KB"
            divisor=1024
        elif (( largest < 1073741824 )); then
            unit="MB"
            divisor=1048576
        else
            unit="GB"
            divisor=1073741824
        fi
        find "$1" -type f -printf '%s %p\n' | sort -rn | head -20 | awk -v unit="$unit" -v divisor="$divisor" '{ printf "%.2f%s\t%s\n", $1/divisor, unit, $2 }'
    fi
}


# Searches for text in all files in the current folder
ftext ()
{
	# -i case-insensitive
	# -I ignore binary files
	# -H causes filename to be printed
	# -r recursive search
	# -n causes line number to be printed
	# optional: -F treat search term as a literal, not a regular expression
	# optional: -l only print filenames and not the matching lines ex. grep -irl "$1" *
	grep -iIHrn --color=always "$1" . | less -r
}


# thefuck - see github
#eval "$(thefuck --alias fuck)"

# WINDOWS Compatible
# cli google usage = type google *search term* to google it in default browser
#working as of 2023 September
google() {
    search=""
    echo "Googling: $@"
    for term in $@; do
        search="$search%20$term"
    done
    xdg-open "http://www.google.com/search?q=$search"
}


extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)  tar xjf $1    ;;
      *.tar.gz) tar xzf $1    ;;
      *.bz2)    bunzip2 $1    ;;
      *.rar)    rar x $1    ;;
      *.gz)   gunzip $1   ;;
      *.tar)    tar xf $1   ;;
      *.tbz2)   tar xjf $1    ;;
      *.tgz)    tar xzf $1    ;;
      *.zip)    unzip $1    ;;
      *.Z)    uncompress $1 ;;
      *)      echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

function cheat() {
      curl cht.sh/$1
  }

function last {
    ls -lt $1 | head
}

## WIKIPEDIA SEARCH FUNCTION ##
wikipediaSearch() {
echo -n -e "\n============================================\n\tWelcome to WikiPedia Search"; echo ""; i=1 ; for line in $(lynx --dump "http://en.wikipedia.org/w/index.php?title=Special%3ASearch&profile=default&search=$1&fulltext=Search" | grep http://en.wikipedia.org/wiki | cut -c7-); do echo $i $line; lines[$i]=$line ;  i=$(($i+1)); done ; echo -n -e "\n============================================\n\tPlease select the link to open - "; read answer; w3m ${lines[$answer]}
}


#eval $(thefuck --alias)

if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

#list servicesd
listd() {
	echo -e ${BLD}${RED}" --> SYSTEM LEVEL <--"${NRM}
	find /etc/systemd/system -mindepth 1 -type d | sed '/getty.target/d' | xargs ls -gG --color
	[[ $(find $HOME/.config/systemd/user -mindepth 1 -type d | wc -l) -eq 0 ]] ||
		(echo -e ${BLD}${RED}" --> USER LEVEL <--"${NRM} ; \
		find $HOME/.config/systemd/user -mindepth 1 -type d | xargs ls -gG --color)
}



#web search tool | Usage: gsearch <value>
# function gsearch {
# Q="$@";
# GOOG_URL='https://www.google.co.uk/search?tbs=li:1&q=';
# AGENT="Mozilla/4.0";
# stream=$(curl -A "$AGENT" -skLm 20 "${GOOG_URL}${Q//\ /+}" | grep -oP '\/url\?q=.+?&amp' | sed 's|/url?q=||; s|&amp||');
# echo -e "${stream//\%/\x}";
# }

#Is server up ? | Usage: down4me <www.foo.com>
down4me() {
curl -s "http://www.downforeveryoneorjustme.com/$1" | sed '/just you/!d;s/<[^>]*>//g';
}


# Run a command x times | Usage: runx <value>
# http://www.stefanoforenza.com/how-to-repeat-a-shell-command-n-times/
runx() {
    n=$1
    shift
    while [ $(( n -= 1 )) -ge 0 ]
    do
        "$@"
    done
}


#Search files & directories | Usage: search <file/dirs>
search() {
find . -iname "*$@*" | less;
}

# DuckDuckGo search bash function  | Usage: ddg <foo>
ddg() {
    search=""
    for term in $*; do
        search="$search%20$term"
    done
    xdg-open "http://duckduckgo.com/?q=$search"
}

# StackOverflow bash search function  | Usage: so <foo>
so() {
    search=""
    for term in $*; do
        search="$search%20$term"
    done
    w3m "http://stackoverflow.com/search?q=$search"
}


#encrypt <file> | Usage encrypt <file>
function encrypt() {
        [ -e "$1" ] || return 1
        openssl des3 -salt -in "$1" -out "$1.$CRYPT_EXT"
        [ -e "$1.$CRYPT_EXT" ] && shred -u "$1"
}

#decrypt <file.> | Usage decrypt <file.>
function decrypt() {
        [ -e "$1" ] || return 1
        [ "${1%.$CRYPT_EXT}" != "$1" ] || return 2
        openssl des3 -d -salt -in $1 -out ${1%.$CRYPT_EXT}
        [ -e "${1%.$CRYPT_EXT}" ] && rm -f "$1"
}


# kill process at port
# Usage:
# `portkill 3000`
# `portkill 8301 8302` (multiple arguments supported)
portkill() {
    for port in "$@"; do
        pids=$(lsof -ti tcp:"$port")
        if [ -n "$pids" ]; then
            echo "Killing process using port $port"
            echo "$pids" | xargs kill
        else
            echo "No processes found using port $port."
        fi
    done
}


b64d() {
	echo -n $1 | base64 -d
}

b64() {
	echo -n $1 | base64
}


# Copy file with a progress bar
cpp()
{
	set -e
	strace -q -ewrite cp -- "${1}" "${2}" 2>&1 \
	| awk '{
	count += $NF
	if (count % 10 == 0) {
		percent = count / total_size * 100
		printf "%3d%% [", percent
		for (i=0;i<=percent;i++)
			printf "="
			printf ">"
			for (i=percent;i<100;i++)
				printf " "
				printf "]\r"
			}
		}
	END { print "" }' total_size=$(stat -c '%s' "${1}") count=0
}

# Show current network information
netinfo ()
{
	echo "--------------- Network Information ---------------"
	/sbin/ifconfig | awk /'inet addr/ {print $2}'
	echo ""
	/sbin/ifconfig | awk /'Bcast/ {print $3}'
	echo ""
	/sbin/ifconfig | awk /'inet addr/ {print $4}'

	/sbin/ifconfig | awk /'HWaddr/ {print $4,$5}'
	echo "---------------------------------------------------"
}


# View Apache logs
apachelog ()
{
	if [ -f /etc/httpd/conf/httpd.conf ]; then
		cd /var/log/httpd && ls -xAh && multitail --no-repeat -c -s 2 /var/log/httpd/*_log
	else
		cd /var/log/apache2 && ls -xAh && multitail --no-repeat -c -s 2 /var/log/apache2/*.log
	fi
}

function color_my_prompt {
    local __user_and_host="\[\033[01;32m\]\u@\h"
    local __cur_location="\[\033[01;34m\]\w"
    local __git_branch_color="\[\033[93m\]"
    local __git_branch='$(__git_ps1 "[%s]")'
    local __prompt_tail="\[\033[35m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__cur_location$__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt





# :network_devices ----- Print a list of all network devices
function :network_devices() { for ip in $(seq 1 254); do ping -c 1 10.4.1.$ip>/dev/null; [ $? -eq 0 ] && echo "10.4.1.$ip UP" || : ; done; }


# :wanip ----- Print your WAN IP address
alias :wanip="dig +short myip.opendns.com @resolver1.opendns.com"

# ----- WAN IP address Logger
function wanip_log() {
    wanip_val=$(dig +short myip.opendns.com @resolver1.opendns.com)
    curr_ts=$(date +"%Y-%m-%d %H:%M:%S")
    echo [$curr_ts] $wanip_val >> /var/log/wan_ip.log

    # previous wan ip is stored in an Env. Variable

    # compare the stored wan ip with the wan ip just received

    # if the two are different, update the Env. Variable, and then somehow notify Adge that a change has taken place - because the AWS security groups with my ip will need to be modified to reflect the new ip
}

trim-whitespace() {
	echo "$@" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'
}


































