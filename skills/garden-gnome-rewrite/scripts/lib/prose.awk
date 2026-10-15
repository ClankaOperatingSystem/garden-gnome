# Walk the prose lines of Org files and call judge(FILENAME, FNR, text)
# on each, with code, links and quotations taken out of the text. The
# check's own awk file defines judge.
#
#   awk -f lib/prose.awk -f lib/CHECK.awk FILE...
#
# Left out: source, example, quote, verse and export blocks, drawers
# such as PROPERTIES and LOGBOOK, keyword lines that start with #+,
# comment lines, and table rows. In the remaining lines, inline code
# (=...= and ~...~), link targets and text in double quotation marks are
# removed before judge sees the line.

FNR == 1 { block = 0; drawer = 0 }

/^[ \t]*#\+(begin|BEGIN)_/ { block = 1; next }
/^[ \t]*#\+(end|END)_/ { block = 0; next }
block { next }

/^[ \t]*:[A-Za-z_-]+:[ \t]*$/ && !/^[ \t]*:END:/ { drawer = 1; next }
/^[ \t]*:END:[ \t]*$/ { drawer = 0; next }
drawer { next }

/^[ \t]*#/ { next }
/^[ \t]*\|/ { next }

{ judge(FILENAME, FNR, plain($0)) }

# The text of a line with inline code, link targets and quotations
# removed.
function plain(text) {
  gsub(/=[^= \t][^=]*=/, "", text)
  gsub(/~[^~ \t][^~]*~/, "", text)
  gsub(/\[\[[^]]*\]\[/, "", text)
  gsub(/\[\[[^]]*\]\]/, "", text)
  gsub(/"[^"]*"/, "", text)
  gsub(/“[^”]*”/, "", text)
  return text
}

function report(file, line, message, text) {
  sub(/^\.\//, "", file)
  sub(/^[ \t]+/, "", text)
  if (length(text) > 80) text = substr(text, 1, 80)
  print file ":" line ": " message ": " text
  any = 1
}

END { exit any ? 1 : 0 }
