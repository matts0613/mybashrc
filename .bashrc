# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

# The following block is surrounded by two delimiters.
# These delimiters must not be modified. Thanks.
# START KALI CONFIG VARIABLES
PROMPT_ALTERNATIVE=twoline
NEWLINE_BEFORE_PROMPT=yes
# STOP KALI CONFIG VARIABLES

if [ "$color_prompt" = yes ]; then
    # override default virtualenv indicator in prompt
    VIRTUAL_ENV_DISABLE_PROMPT=1

    prompt_color='\[\033[;32m\]'
    info_color='\[\033[1;34m\]'
    prompt_symbol=㉿
    if [ "$EUID" -eq 0 ]; then # Change prompt colors for root user
        prompt_color='\[\033[;94m\]'
        info_color='\[\033[1;31m\]'
        # Skull emoji for root terminal
        #prompt_symbol=💀
    fi
    case "$PROMPT_ALTERNATIVE" in
        twoline)
            PS1=$prompt_color'┌──${debian_chroot:+($debian_chroot)──}${VIRTUAL_ENV:+(\[\033[0;1m\]$(basename $VIRTUAL_ENV)'$prompt_color')}('$info_color'\u'$prompt_symbol'\h'$prompt_color')-[\[\033[0;1m\]\w'$prompt_color']\n'$prompt_color'└─'$info_color'\$\[\033[0m\] ';;
        oneline)
            PS1='${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV)) }${debian_chroot:+($debian_chroot)}'$info_color'\u@\h\[\033[00m\]:'$prompt_color'\[\033[01m\]\w\[\033[00m\]\$ ';;
        backtrack)
            PS1='${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV)) }${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ ';;
    esac
    unset prompt_color
    unset info_color
    unset prompt_symbol
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*|Eterm|aterm|kterm|gnome*|alacritty)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

[ "$NEWLINE_BEFORE_PROMPT" = yes ] && PROMPT_COMMAND="PROMPT_COMMAND=echo"

# enable color support of ls, less and man, and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    export LS_COLORS="$LS_COLORS:ow=30;44:" # fix ls color for folders with 777 permissions

    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias diff='diff --color=auto'
    alias ip='ip --color=auto'

    export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
    export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
    export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
    export LESS_TERMCAP_so=$'\E[01;33m'    # begin reverse video
    export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
    export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
    export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#
#alias google='{read -r arr; browser "https://google.com/search?q=${arr}";} <<<'


alias rc='source ~/.bashrc'

alias cl='cd ~ && clear'

alias update='sudo apt update'

alias upgrade='sudo apt upgrade -y'

alias agr='sudo apt remove'

alias asearch='sudo apt search'

alias install='sudo apt install'


# Cute shell shortcuts
alias ls='ls --sort=extension --color=auto'
alias ll='ls -lh --color=auto'
alias lal='ls -alh --color=auto'
alias la='ls -Al --color=auto'
alias psg='ps -A | grep'
alias l='ls -CF --color=auto'



alias path='echo -e ${PATH//:/\\n}'


# Some more, to avoid mistakes
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


alias requirements='pip3 install -r requirements.txt' 

alias x='exit'

# system
alias tchau='shutdown -h now'
alias kname='killall'
alias kprocess='kill -9'
alias reboot='systemctl reboot -i'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias p='ping' 

alias ll='ls -lh'
alias la='ls -lha'
alias lld='ll | grep "^d"'


alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

## Get server cpu info ##
alias cpuinfo='lscpu'

## Ports
alias ports='sudo lsof -i -P -n | grep LISTEN'


alias c='clear'

alias h='history'

alias myip='curl ip.me'


alias toron='systemctl start tor.service'
alias toroff='systemctl stop tor.service'
alias serve='python -m SimpleHTTPServer'
alias ports='sudo netstat -tulanp'

alias cx='chmod +x'

alias whereami='pwd'

alias weather='curl wttr.in/sarasota'

alias dealwithit="echo '(•_•)' ; echo '( •_•)>⌐■-■' ; echo '(⌐■_■)' ; sleep 1 ; echo '(▀̿Ĺ̯▀̿ ̿)'"


#alternate ip
#curl https://wtfismyip.com/text



alias j='jobs -l'

alias yd='youtube-dl'

alias explore='explorer.exe .'

alias brb='sudo reboot'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias crone='sudo vim /etc/crontab'
alias totalusage='df -hl --total | grep total'
alias most='du -hsx * | sort -rh | head -10'



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



# alias chrome="powershell.exe -Command start chrome"
# alias firefox="powershell.exe -Command start firefox"


# get web server headers #
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


alias websiteget="wget --random-wait -r -p -e robots=off -U mozilla"

alias genpasswd="strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d 'n'; echo" 


alias www='python2 -m SimpleHTTPServer'

alias python='python2'
alias py2='python2'


alias python3='python3'
alias py3='python3'

eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias FUCK)


# what's using the most memory?
alias mem='ps -e -orss=,args= | sort -b -k1,1n | pr -TW$COLUMNS'



alias x='exit'

alias root='sudo -i'
alias s='sudo "$BASH" -c "$(history -p !!)"'
alias sl='sl -ael'
alias su='sudo -i'

alias pip='pip2'
alias pip3='pip3'


























# functions
# -------------------------------------------------------------------------------------------------------------
#Make directory & enter it
mkcd() {
   mkdir -p $1
   cd $1
}

# getlocation() { lynx -dump http://www.ip-adress.com/ip_tracer/?QRY=$1|grep address|egrep 'city|state|country'|awk '{print $3,$4,$5,$6,$7,$8}'|sed 'sip address flag '|sed 'sMy';} 

# stopcoding() {
#    pkill Trello
#    pkill Xcode #seems to save changes (I tested it)
#    pkill Simulator
#    pkill Discord
#    pkill SF\ Symbols
# }
# freeram() {
#    pkill Mail
#    pkill Calendar
#    pkill Music
#    pkill Notes
#    pkill Pages
#    pkill Messages
#    pkill -9 Microsoft\ Outlook #complained without the -9
#    #pkill literally any application... you get the point
#    #but I don't include Safari/Chrome or apps used constantly
# }


#Search for a specific file 
#Use: "findfile example"
#Results: prints any files that begin with "example", is not case-sensitive, picks up any file type (ex. result: ExampleTest.docx)
findfile() {
   file = "$@"
   file += "*"
   find . -iname $file 2>&1 | grep -v "Operation not permitted"
}
#Search for all files with a specific extension
#Use: "fondest swift"
#Results: prints all .swift files
findext() {
   ext = "*."
   ext += "$@"
   find . -iname $ext 2>&1 | grep -v "Operation not permitted"
}


# function google () {
#     xdg-open  
# }
# function II () {
# sudo apt-get  -y check
# sudo apt-get  -y clean
# sudo apt-get  -y  install
# sudo apt-get  -y  update
# sudo apt-get  -y  upgrade
# sudo apt-get  -y  dist-upgrade
# sudo apt-get  -y check
# sudo apt-get  -y autoclean
# sudo apt-get  -y autoremove
# }



# function zzz()
# {
# while true
# do
#     #date
#     ls -hltr
#     sleep 1s
# done
# }

# function search (){
#  egrep -roiI $1 . | sort | uniq
# }

# function whereis (){
#   find . -name "$1*";
# }

# Find What is Using a Particular Port
  # USAGE: $ whoisport 80
# function whoisport (){
#         port=$1
#         pidInfo=$(fuser $port/tcp 2> /dev/null)
#         pid=$(echo $pidInfo | cut -d':' -f2)
#         ls -l /proc/$pid/exe
# }




# Tail Files in Directory
  # USAGE: $ log {arg1:file filter(opt)} {arg2:string filter(opt)}
function log (){
 if [ $# -lt 1 ];
 then
  tail -f *
 fi

 if [ $# -gt 1 ];
 then
  tail -f $1 | grep --line-buffered "$2"
 else
  tail -f $1
 fi
}







#extracts files per type
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}



# see the top 10 commands run
history | awk '{cmd[$2]++} END {for(elem in cmd) {print cmd[elem] " " elem}}' | sort -n -r | head -10



function hg() {
    history | grep "$1";
}


function weather_report() {

    local response=$(curl --silent 'https://api.openweathermap.org/data/2.5/weather?id=5128581&units=imperial&appid=<YOUR_API_KEY>') 

    local status=$(echo $response | jq -r '.cod')

    # Check for the 200 response indicating a successful API query.
    case $status in
        
        200) printf "Location: %s %s\n" "$(echo $response | jq '.name') $(echo $response | jq '.sys.country')"  
             printf "Forecast: %s\n" "$(echo $response | jq '.weather[].description')" 
             printf "Temperature: %.1f°F\n" "$(echo $response | jq '.main.temp')" 
             printf "Temp Min: %.1f°F\n" "$(echo $response | jq '.main.temp_min')" 
             printf "Temp Max: %.1f°F\n" "$(echo $response | jq '.main.temp_max')" 
            ;;
        401) echo "401 error"
            ;;
        *) echo "error"
            ;;

    esac

}


#cd and ls in one
cl() {
    local dir="$1"
    local dir="${dir:=$HOME}"
    if [[ -d "$dir" ]]; then
        cd "$dir" >/dev/null; ls
    else
        echo "bash: cl: $dir: Directory not found"
    fi
}



numfiles() { 
    N="$(ls $1 | wc -l)"; 
    echo "$N files in $1";
}



#more ip stuff
ipif() { 
    if grep -P "(([1-9]\d{0,2})\.){3}(?2)" <<< "$1"; then
     curl ipinfo.io/"$1"
    else
    ipawk=($(host "$1" | awk '/address/ { print $NF }'))
    curl ipinfo.io/${ipawk[1]}
    fi
    echo
}






#good for opening bash info
# printf "\n"
# printf "   %s\n" "IP ADDR: $(curl ifconfig.me)"
# printf "   %s\n" "USER: $(echo $USER)"
# printf "   %s\n" "DATE: $(date)"
# printf "   %s\n" "UPTIME: $(uptime -p)"
# printf "   %s\n" "HOSTNAME: $(hostname -f)"
# printf "   %s\n" "CPU: $(awk -F: '/model name/{print $2}' | head -1)"
# printf "   %s\n" "KERNEL: $(uname -rms)"
# printf "   %s\n" "PACKAGES: $(dpkg --get-selections | wc -l)"
# printf "   %s\n" "RESOLUTION: $(xrandr | awk '/\*/{printf $1" "}')"
# printf "   %s\n" "MEMORY: $(free -m -h | awk '/Mem/{print $3"/"$2}')"
# printf "\n"


























