export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/home/kangd/miniconda2/bin:$PATH

if [[ "$OSTYPE" == "darwin"* ]]; then
    alias vim="/usr/local/bin/vim"
    alias ctags="/usr/local/bin/ctags"
elif [[ "$OSTYPE" == "linux-gnu" ]]; then 
    alias clion="/opt/clion-2017.2.2/bin/clion.sh"
    alias pycharm="/opt/pycharm-2017.2.3/bin/pycharm.sh"
fi
