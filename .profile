#-*- mode: sh -*-

# DEFAULTS
[ -d /etc/profile.d ] && for i in /etc/profile.d/*.sh; do
    . $i
done

# NIX
# export    ACLOCAL_PATH=~/.nix-profile/share/aclocal:$ACLOCAL_PATH
# export PKG_CONFIG_PATH=~/.nix-profile/lib/pkgconfig:$PKG_CONFIG_PATH
# export  C_INCLUDE_PATH=~/.nix-profile/include:$C_INCLUDE_PATH               #:/usr/include:/usr/local/include
# export     LD_RUN_PATH=~/.nix-profile/lib:~/.nix-profile/lib64:$LD_RUN_PATH #:/lib:/lib64:/lib/x86_64-linux-gnu:/usr/lib:/usr/lib/x86_64-linux-gnu:/usr/local/lib
# export         MANPATH=~/.nix-profile/share/man:$MANPATH
# export  NIX_GHC_LIBDIR=~/.nix-profile/lib

# EMACS
export EDITOR='emacs -nw'

# GIT
export GIT_EDITOR=nano

# HASKELL
[ -d ~/.rbenv/bin ] && PATH=~/.cabal/bin:$PATH

# JAVA
if [ -f /usr/libexec/java_home ]; then # MAC
    export JAVA_HOME="$(/usr/libexec/java_home -v 1.7+)"
fi
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128m"

# PYTHON
[ -d ~/.local/bin ]             && PATH=~/.local/bin:$PATH
[ -d ~/Library/Python/2.7/bin ] && PATH=~/Library/Python/2.7/bin:$PATH
export WORKON_HOME=~/.virtualenvs
which virtualenvwrapper.sh >/dev/null && . $(which virtualenvwrapper.sh)

# RUBY
[ -d ~/.rbenv/bin ] && PATH=~/.rbenv/bin:$PATH

# ~
[ -d ~/bin ] && PATH=~/bin:$PATH
