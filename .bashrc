# Git
function prune {
  git fetch --prune
  git branch -v | awk '/gone]/ {print $1}' | xargs git branch -D
}
