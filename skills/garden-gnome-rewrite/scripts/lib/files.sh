# Run one check's awk over the Org files beneath the working directory,
# or over the files given as arguments. A walk leaves out archives,
# attics, hidden and underscore directories, and any directory that is
# a git repository of its own, because a repository mounted in a garden
# is not the garden's canon. D is the skill's scripts/ directory.
# Findings are sorted. Exit 0 when there are none, 1 when there are.
run_check() {
  D=$1; awkfile=$2; shift 2
  if [ $# -gt 0 ]; then
    found=$(awk -f "$D/lib/prose.awk" -f "$D/lib/$awkfile" "$@")
  else
    found=$(find . \( -name archives -o -name attic -o -name '_*' -o -name '.?*' \
                      -o \( -path './*' -type d -exec test -e '{}/.git' \; \) \) -prune -o \
                 -name '*.org' -type f \
                 -exec awk -f "$D/lib/prose.awk" -f "$D/lib/$awkfile" {} +)
  fi
  status=$?
  [ -z "$found" ] || printf '%s\n' "$found" | LC_ALL=C sort
  exit $status
}

