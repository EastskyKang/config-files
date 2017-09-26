export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/home/kangd/miniconda2/bin:$PATH

export RAI_ROOT=/home/kangd/git/rai
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source virtualenvwrapper.sh
export RAI_GRAPHICS_OPENGL_ROOT=/home/kangd/git/raigraphics_opengl

if [[ "$OSTYPE" == "darwin"* ]]; then
    alias vim="/usr/local/bin/vim"
    alias ctags="/usr/local/bin/ctags"
elif [[ "$OSTYPE" == "linux-gnu" ]]; then 
    alias clion="/opt/clion-2017.2.2/bin/clion.sh"
    alias pycharm="/opt/pycharm-2017.2.3/bin/pycharm.sh"
fi
