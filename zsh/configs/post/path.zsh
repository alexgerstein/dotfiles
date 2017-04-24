# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# load rbenv if available
if command -v rbenv >/dev/null; then
  eval "$(rbenv init - --no-rehash)"
fi

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

# Add bin for subl command completion
PATH="$PATH:$HOME/bin"

# Add local/bin cli tools
export PATH=/usr/local/bin:$PATH

export -U PATH
