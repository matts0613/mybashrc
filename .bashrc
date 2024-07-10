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
export PATH
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
# User specific aliases and functions
# WINDOWS Compatible
# allows you to choose from over 125 themes for your terminal
#alias gogh='bash -c  "$(wget -qO- https://git.io/vQgMr)"'
#upgrades apt packages
alias upgrade='sudo apt-get upgrade -y && sudo apt autoremove -y'
#different package manager
#alias upgrade='sudo dnf upgrade -y'
#install apt package
alias agi='sudo apt-get install'
alias updg='sudo apt update && sudo apt upgrade -y'
#alias install='sudo dnf install -y'
# updates apt packages
alias update='sudo apt-get update'
#alias update='sudo dnf update'
# search aptpackages
alias asearch='sudo apt-cache search'
#alias search='sudo dnf search'
# remove apt packages
alias agr='sudo apt-get remove'
# shutdown computer
alias shutdown='sudo shutdown –h now'
# reboot computer
alias reboot='sudo systemctl restart -i'
# lock computer screen
#alias lock='gnome-screensaver-command --lock'
# opens a windows explorer window in current directory
alias explorer='explorer.exe .'
# opens a file - usage = open *link to file*
#alias open='gnome-open'
# clones a github repo
alias clone='git clone'
# displays public ip in terminal
#alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
# windows ip
alias ip='curl -kLs "http://api.ipify.org"'
# gets ip address and geolocation in one command
alias ipgeo='$myip | curl ipinfo.io/$myip'
# removes a file in dir - usage = rm *filename* then type y and enter
alias rm='rm -i'
# show some
alias la='ls -Al --color=auto'
# shows all files, even hidden ones
alias sall='ls -a --color=auto'
# alphabetical sort
alias labc='ls -lap --color=auto'
# completely wipes entire computer
alias wipewholecomputer='dd if=/dev/urandom of=/dev/hda'
# downloads site using wget
alias wgetsite="wget -rmkEpSk -e robots=off --random-wait -U mozilla"
# copies current directory to clipboard
alias cpwd='pwd | xclip -selection clipboard'
# shows available memory on hdd
alias df='df -h'
# untar tar.gz file
alias untar='tar -zxvf'
# pings server
alias ping='ping -c 5'
# faster ping
#alias fastping='ping -c 100 -s.2'
# displays current date in terminal
alias date='date +"%m-%d-%Y"'
# list only directories
alias lsd='ls -h -b --color=auto -d */'     
# creates and opens a webserver at localhost:9000 in chrome
#alias www='python -m SimpleHTTPServer 8069 | google-chrome http://localhost:8069'
# opens synaptic package manager
#alias synaptic='sudo synaptic'
# copy script output to clipboard
#alias clipboard='xclip -selection clipboard'
#  some more ls aliases below
# shows all + hidden files, using a long listing format + classify
alias ll='ls -alF --color=auto'
# list files in column and classify
alias l='ls -CF --color=auto'
# goes back one directory
alias ..='cd ..'
#goes back two directories, etc...
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
#displays the ports on computer
alias ports='netstat -tulanp'
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
#displays grep commands in color
alias grep='grep --color=auto --exclude-dir=\.svn'
# opens calculator in terminal
alias calc='bc -l'
# gets computer cpu info
alias cpuinfo='lscpu'
# get current directory
alias dir='echo $PWD'
# alias python3='py -3.7'
# alias python3='py -3.7.4'
# restarts bashrc with rc
alias rc="source ~/.bashrc"
# Shortcut for apt-cyg install
# alias aci='apt-cyg install'
# update apt-cyg
# alias acu='apt-cyg update'
# gets size of current dir
alias dirsz='du -h --max-depth=1'
#sets permission of directory - need inputs 
alias cx="chmod +x"
#gets you a weather display in your terminal
alias weather='curl wttr.in/'
#gets just the mp3 audio from a youtube video and saves it
alias getmp3="youtube-dl -x --audio-format mp3 "
#mirrors a website for offline archiving a different way than above
alias mirror='wget -m -r -np -p -k -E'
#clears everything from terminal
alias c='clear'
# system
# alias tchau='shutdown -h now'
alias kname='killall'
alias kprocess='kill -9'
# alias reboot='systemctl reboot -i'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias requirements='pip3 install -r requirements.txt' 
alias rdme='cat README.md'
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
alias bashv='bash --version'
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
alias www='python2 -m SimpleHTTPServer 3543'
alias websiteget="wget --random-wait -r -p -e robots=off -U mozilla"
alias genpasswd="strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d 'n'; echo" 
alias fastping='ping -c 100 -s.2'
alias s='sudo "$BASH" -c "$(history -p !!)"'
alias su='sudo -i'
alias pip='pip2'
alias pip3='pip3'
alias crone='sudo vim /etc/crontab'
alias totalusage='df -hl --total | grep total'
alias most='du -hsx * | sort -rh | head -10'
#alias for youtube-dl all options
alias youtube-dl='youtube-dl -i --write-sub --write-auto-sub --sub-lang en --embed-subs'
#soft-reboot the computer
alias res='kill -9 -1'
alias freshclam='sudo freshclam'


alias checkcommand="type -t"
# random nmap commands
alias nsub='nmap --script dns-brute --script-args dns-brute.domain=$URL,dns-brute.threads=6 -vv -oN scan'
alias nall='nmap -F -iL scan --open -oN nall'
alias nu='nmap -F $URL -v'
alias n='nmap -F -v'
# History commands
alias h1="history 10"
alias h2="history 20"
alias h3="history 30"

#_______________________________________________________________________________
#functions
#clears terminal and returns to ~
function cdclear { cd ~; clear;}


# thefuck - see github
eval "$(thefuck --alias fuck)"

# cli google usage = type google *search term* to google it in default browser
# working as of 2023 September
google() {
    if [ $# -eq 0 ]; then
        echo "Usage: google <search terms>"
        return 1
    fi

    echo "Googling: $*"
    search=$(printf '%s' "$*" | sed 's/ /+/g')
    xdg-open "http://www.google.com/search?q=$search"
}



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# pnpm
export PNPM_HOME="/home/matt/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end



eval "$(starship init bash)"
