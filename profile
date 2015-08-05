if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

##
# Your previous /Users/caridy/.bash_profile file was backed up as /Users/caridy/.bash_profile.macports-saved_2015-07-29_at_14:49:11
##

# MacPorts Installer addition on 2015-07-29_at_14:49:11: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

