export EDITOR=nvim
export PATH="$HOME/.local/bin:$PATH"
export APP_DIR="$HOME/App/"
export DEV_DIR="$HOME/Dev/"
export ANTLR_JAR="$APP_DIR/antlr-4.9.2-complete.jar"

alias vim='nvim'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
conda_init () {
    __conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
            . "/opt/miniconda3/etc/profile.d/conda.sh"
        else
            export PATH="/opt/miniconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup
}

export PATH=$PATH:$HOME/go/bin
# <<< conda initialize <<<



# Added by Toolbox App
export PATH="$PATH:/home/toan/.local/share/JetBrains/Toolbox/scripts"
. "$HOME/.cargo/env"
