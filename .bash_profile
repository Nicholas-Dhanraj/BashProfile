
#BASH AUTOCOMPLETE
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
}

#google=chromium --user-data-dir $(mktemp -d)
 
    export PS1='\[\e[00;37m\]$?\[\e[0m\]\[\033[1;32m\]\[\033[1;32m\][\t]\[\033[1;41m\]\u\[\033[1;41m\]@\[\033[1;41m\]\h:\[\033[0m\] \[\033[1;32m\]\w\[\033[0m\] \$ '

# Let there be color in grep!
export GREP_OPTIONS=' — color=auto'

alias pythonserver='python -m SimpleHTTPServer 8000'


#alias crontab='Hi, gerrei'
#export PS1=" Take my horse to the old town road 🐼 "

#   Change Prompt
#   ------------------------------------------------------------

    export PS1='"_____________________________________________________________________________________________________________________________\n┤ \e[0;36m \w @ \h [\u] [\@] \e[m \n┤ ➣  '
    export PS2="[\t]| ➣ " 
  

#   Set Paths
#   ------------------------------------------------------------
   export PATH="$PATH:/usr/local/bin/"
   export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------

    export EDITOR=/usr/bin/nano


#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
   export CLICOLOR=1
   export LSCOLORS=ExFxBxDxCxegedabagacad

function cheat() {
      curl cht.sh/$1
  }


################################################################################################################################
#################################################------PYTHON STUFF------#######################################################
################################################################################################################################

# Takes any Python package/module name as an argument, and changes your current
# working directory to be the library or site-packages location of that library,
# according to the current python interpreter in your $PATH

# Lets you explore the source code, at the command-line, for any Python libraries you have installed.

pycd () {
        pushd `python -c "import os.path, $1; print(os.path.dirname($1.__file__))"`;
    }


#`mkdataenv` is nice for spinning up a quick Jupyter environment for all data analysis needs.

 function mkdataenv() {
        mkvirtualenv --python /usr/local/bin/python3 $1
        workon $1
        mkdir "$1"
        cd $1
        pip install pandas jupyter numpy matplotlib seaborn
        pip freeze > requirements.txt
       jupyter notebook
    }


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
#export PATH



#################################################################################################################################
#####################################################------ALIAS------###########################################################
#################################################################################################################################
alias myip="curl http://ipecho.net/plain; echo"
alias w="defaults -currentHost write com.apple.screensaver idleTime 1.0"
alias meow='cmatrix | lolcat'

alias q='/usr/bin/osascript -e "tell application \"terminal\" to quit"'

alias pip='pip3'
# Shortcuts to vimrc and bashrc
alias vimrc='vim ~/.vimrc'

alias ls="ls -CF"
alias lsl="ls -lhFA | less"
alias ..="cd"
alias fhere="find . -name "
#alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias ps="ps auxf"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias hist="history | grep"


alias cow='cowsay hi'
alias cl='clear; ls '
alias nancy='echo I love you Zhang, Fang HEHEEEEE'
alias e=vim
alias pylist='pip3 freeze'
alias duss="sudo du -d 1 -h | sort -hr | egrep -v ^0"




alias i3cheatsheet="egrep ^bind ~/.i3/config | cut -d ' ' -f 2- | sed 's/ /\t/' | column -ts $'\t' | pr -2 -w 145 -t | less"
alias mountt="mount | column -t | sort"


#open bash profile, from beginning
alias bp='nano .bash_profile;'

#open bash profile, from ALIAS section
alias bpa='nano  +85, .bash_profile;'

#open bash profile, from PYTHON section
alias bpp='nano  +40, .bash_profile;'

#source/compile bash profile after edit
alias bpc='source .bash_profile'

# Bookmark directories ej. "bm a" "go a" etc
    go() { eval dir=\$$1; cd "$dir"; }
    bm() { eval $1=$(pwd); echo "`set | egrep ^[a-z]+=\/`" > ~/.bookmarks; }
    test -f ~/.bookmarks && source ~/.bookmarks

    # I use this one all the time, combined find+grep, f.e. fgr "Class" "*.cpp" "-l" (2nd and 3rd parameters optional"
    function fgr {
            NAM=""
            GREPTYPE="-i -H"
            if [ -n "$1" ]; then
                    test -n "$2" && NAM="-name \"$2\""
                    test -n "$3" && GREPTYPE=$3
                    CMMD="find . $NAM -not -path '*/\.*' -exec egrep --colour=auto $GREPTYPE \"$1\" {} + 2>/dev/null"
                    >&2 echo -e "Running: $CMMD\n"
                    sh -c "$CMMD"
                    echo ""
            else
                    echo -e "Expected: fgr <search> [file filter] [grep opt]\n"
            fi
    }

mcd () {
    mkdir -p $1
    cd $1
}





















test1() {

 e_header "I am a sample script"
}
##
# Your previous /Users/lonewolf/.bash_profile file was backed up as /Users/lonewolf/.bash_profile.macports-saved_2019-01-17_at_11:24:14
##

# MacPorts Installer addition on 2019-01-17_at_11:24:14: adding an appropriate PATH variable for use with MacPorts.




export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
"_____________________________________________________________________________________________________________________________
┤  ~ @ nicholass-mbp [lonewolf] [10:48 am]  
┤ ➣  
