# PROSE-23: an em dash or a horizontal bar in prose. Alternation, not a
# bracket expression, so that an awk which reads bytes matches the whole
# character and not every character that shares a byte with it.
function judge(file, line, text) {
  if (text ~ /(—|―)/) report(file, line, "PROSE-23 em dash", text)
}
