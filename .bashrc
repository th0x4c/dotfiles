PS1='\h:\W \u\$ '
export PATH=$HOME/local/bin:$PATH
export CLASSPATH=.:$CLASSPATH
alias screen='screen -U'

case $OSTYPE in
  darwin* )
    export PATH=/opt/local/bin:/opt/local/sbin:$PATH
    export DISPLAY=:0.0
    export MANPATH=/opt/local/share/man:$MANPATH

    export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home

    export ORACLE_HOME=/opt/oracle/instantclient_10_2
    export DYLD_LIBRARY_PATH=$ORACLE_HOME/lib:$DYLD_LIBRARY_PATH
    export CLASSPATH=$ORACLE_HOME/ojdbc14.jar:$CLASSPATH
    export TNS_ADMIN=$HOME/.oracle.d/network/admin
    export NLS_LANG=Japanese_Japan.UTF8
    export NLS_DATE_FORMAT="YYYY-MM-DD HH24:MI:SS"

    alias ls='ls -G'
    alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
    alias sqlplus='/opt/oracle/instantclient_10_2/sqlplus'

    if [ -f /opt/local/etc/bash_completion ]; then
      . /opt/local/etc/bash_completion
    fi
    ;;

  linux* )
    # Source global definitions
    if [ -f /etc/bashrc ]; then
      . /etc/bashrc
    fi

    # User specific aliases and functions
    case `lsb_release -i` in
      *Ubuntu* )
        export DISPLAY=:0.0
        export ORACLE_HOME=/usr/lib/oracle/xe/app/oracle/product/10.2.0/server
        export ORACLE_SID=XE
        ;;

      *CentOS* )
        export DISPLAY=172.16.167.1:0.0
        export ORACLE_BASE=/u01/app/oracle
        export ORACLE_SID=orcl11
        export ORACLE_HOME=$ORACLE_BASE/product/11.1.0/db_1
        ;;
      
      * )
        ;;
    esac

    if [ -n "$ORACLE_HOME" ];then
      export PATH=$ORACLE_HOME/bin:$PATH
      export LD_LIBRARY_PATH=$ORACLE_HOME/lib:$LD_LIBRARY_PATH
    fi
    export NLS_LANG=Japanese_Japan.UTF8
    export NLS_DATE_FORMAT="YYYY-MM-DD HH24:MI:SS"

    if [ $TERM == "dumb" ];then
      alias ls='ls -F'
    else
      alias ls='ls --color=auto'
    fi

    # enable programmable completion features
    if [ -f /etc/bash_completion ]; then
      . /etc/bash_completion
    fi
    ;;

  cygwin* )
    export PATH=/usr/local/emacs/22.2/bin:/cygdrive/c/ruby/bin:$PATH

    alias ls='ls --color=auto'
    ;;

  * )
    ;;
esac

