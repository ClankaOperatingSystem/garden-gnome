# PROSE-22: a semicolon in prose.
function judge(file, line, text) {
  if (index(text, ";")) report(file, line, "PROSE-22 semicolon", text)
}
