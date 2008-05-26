PS1='\h:\W \u\$ '
export PATH=$PATH:$HOME/bin
alias screen='screen -U'

case $OSTYPE in
  darwin* )
    export PATH=/opt/local/bin:/opt/local/sbin:$PATH
    export DISPLAY=:0.0
    export MANPATH=/opt/local/share/man:$MANPATH

    alias ls='ls -G'
    alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
    ;;

  linux* )
    # Source global definitions
    if [ -f /etc/bashrc ]; then
      . /etc/bashrc
    fi

    # User specific aliases and functions
    export DISPLAY=172.16.167.1:0.0

    export ORACLE_BASE=/u01/app/oracle
    export ORACLE_SID=orcl11
    export ORACLE_HOME=$ORACLE_BASE/product/11.1.0/db_1
    export PATH=$ORACLE_HOME/bin:$PATH
    export LD_LIBRARY_PATH=$ORACLE_HOME/lib:$LD_LIBRARY_PATH
    export NLS_LANG=Japanese_Japan.UTF8
    export NLS_DATE_FORMAT="YYYY-MM-DD HH24:MI:SS"

    alias ls='ls --color=auto'
    ;;

  cygwin* )
    export PATH=/usr/local/emacs/22.2/bin:/cygdrive/c/ruby/bin:$PATH

    alias ls='ls --color=auto'
    ;;

  * )
    ;;
esac

