PS1='\h:\W \u\$ '
export PATH=$HOME/local/bin:/usr/local/bin:$PATH
export CLASSPATH=.:$CLASSPATH
alias screen='screen -U'

case $OSTYPE in
  darwin* )
    alias ls='ls -G'

    if [ -f /usr/local/etc/bash_completion ]; then
      . /usr/local/etc/bash_completion
    fi

    export JRUBY_OPTS="-Xcext.enabled=true"

    export DYLD_LIBRARY_PATH=$HOME/local/instantclient_11_2
    export ORACLE_HOME=$HOME/.oracle.d
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
        export ORACLE_SID=v11gr2
        export ORACLE_HOME=$ORACLE_BASE/product/11.2.0/dbhome_1
        export CLASSPATH=$ORACLE_HOME/jdbc/lib/ojdbc5.jar:$CLASSPATH

        export PATH=$ORACLE_HOME/jdk/bin:$PATH
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
    export PATH=/usr/local/emacs/bin:/cygdrive/c/ruby/bin:$PATH
    export http_proxy=10.7.66.62:8080

    export NLS_DATE_FORMAT="YYYY-MM-DD HH24:MI:SS"

    alias ls='ls --color=auto'
    alias open='cygstart'
    ;;

  * )
    ;;
esac

