# <<< Default oh my zsh <<<
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# >>> Default oh my zsh >>>

## ROS commands
source /opt/ros/melodic/setup.zsh

## Kill commands
alias killpython='killall -KILL python3 python python2'
## alias killgazebogym='killall -9 rosout roslaunch rosmaster gzserver nodelet robot_state_publisher gzclient'
## alias killmatlab='killall -9 /usr/local/MATLAB/R2019a/bin/glnxa64/MATLAB'

## POLO Software Mujoco and MJRL
## Commenting out for now to keep python path clean
## export PYTHONPATH=home/tylerlum/github_repos/trajopt:$PYTHONPATH
## export LD_LIBRARY_PATH="/home/tylerlum/.mujoco/mujoco200/bin:$LD_LIBRARY_PATH"
## export MUJOCO_PY_FORCE_CPU=True
## alias MJPL='LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libGLEW.so:/usr/lib/nvidia-384/libGL.so'

## Source Sailbot workspace
source /home/tylerlum/sailbot_ws/devel/setup.zsh

## Setup Python env
USE_PYTHON_3=false  # SET THIS
echo "USE_PYTHON_3 is $USE_PYTHON_3"

if $USE_PYTHON_3; then
  # >>> default conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$('/home/tylerlum/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
      eval "$__conda_setup"
  else
      if [ -f "/home/tylerlum/miniconda3/etc/profile.d/conda.sh" ]; then
          . "/home/tylerlum/miniconda3/etc/profile.d/conda.sh"
      else
          export PATH="/home/tylerlum/miniconda3/bin:$PATH"
      fi
  fi
  unset __conda_setup
  # <<< default conda initialize <<<

  # >>> select conda env >>>
  ## USE_RLGPU_V3=false  # SET THIS
  ## if $USE_RLGPU_V3; then
  ##   echo "USE_RLGPU_V3 flag set"
  ##
  ##   # Deactivate conda
  ##   conda deactivate
  ##
  ##   # Make python default to python3
  ##   alias python=python3
  ##   alias pip=pip3
  ##
  ##   # Mujoco
  ##   export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/tylerlum/.mujoco/mujoco200/bin
  ##   export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libGLEW.so
  ##
  ##   # Setup ISAAC GYM conda env
  ##   conda activate rlgpu_v3
  ##
  ##   # Setup Python path for ISAAC GYM
  ##   export LD_LIBRARY_PATH=/home/tylerlum/anaconda3/envs/rlgpu_v3/lib/
  ##   export PYTHONPATH=$PYTHON_PATH:/home/tylerlum/MOCCA/laikago_rl-master-a2729755-sim_and_common-python_only/
  ##   export RAISIM_WORKSPACE=/home/tylerlum/MOCCA/isaacgym-dda-heightfield-7cf1cb84
  ##   cd /home/tylerlum/MOCCA/laikago_rl-master-a2729755-sim_and_common-python_only/sim
  ## fi
  # <<< select conda env <<<
fi

# Log all terminal outputs to file: https://unix.stackexchange.com/questions/200637/save-all-the-terminal-output-to-a-file

# Execute "script" command just once
smart_script(){
    # if there's no SCRIPT_LOG_FILE exported yet
    if [ -z "$SCRIPT_LOG_FILE" ]; then
        # make folder paths
        logdirparent=~/terminal_logs
        logdirraw=raw/$(date +%F)
        logdir=$logdirparent/$logdirraw
        logfile=$logdir/$(date +%F_%T).$$.rawlog

        # if no folder exist - make one
        if [ ! -d $logdir ]; then
            mkdir -p $logdir
        fi

        export SCRIPT_LOG_FILE=$logfile
        export SCRIPT_LOG_PARENT_FOLDER=$logdirparent

        # quiet output if no args are passed
        # if [ ! -z "$1" ]; then
        #     script -f $logfile
        # else
        #     script -f -q $logfile
        # fi
        script -f -q $logfile

        exit
    fi
}

# Start logging into new file
alias startnewlog='unset SCRIPT_LOG_FILE && smart_script -v'

# Manually saves current log file: $ savelog logname
savelog(){
    # make folder path
    manualdir=$SCRIPT_LOG_PARENT_FOLDER/manual
    # if no folder exists - make one
    if [ ! -d $manualdir ]; then
        mkdir -p $manualdir
    fi
    # make log name
    logname=${SCRIPT_LOG_FILE##*/}
    logname=${logname%.*}
    # add user logname if passed as argument
    if [ ! -z $1 ]; then
        logname=$logname'_'$1
    fi
    # make filepaths
    txtfile=$manualdir/$logname'.txt'
    rawfile=$manualdir/$logname'.rawlog'
    # make .rawlog readable and save it to .txt file
    cat $SCRIPT_LOG_FILE | perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' | col -b > $txtfile
    # copy corresponding .rawfile
    cp $SCRIPT_LOG_FILE $rawfile
    printf 'Saved logs:\n    '$txtfile'\n    '$rawfile'\n'
}

# Nicer printing: https://unix.stackexchange.com/questions/262185/display-file-with-ansi-colors
print_with_color(){
  if [ $# -eq 0 ]
  then
    echo "Usage: $0 <path_to_file>"
  else
    echo "PRINTING WITH COLOR"
    echo -ne $(cat $1 | sed  's/$/\\n/' | sed 's/ /\\a /g')
    echo "DONE PRINTING WITH COLOR"
  fi
}

# Makes it log to raw by default
# Can use startnewlog and savelog to manually start new log or save log
smart_script
