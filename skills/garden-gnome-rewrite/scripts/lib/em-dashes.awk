# PROSE-23: an em dash or a horizontal bar in prose.
function judge(file, line, text) {
  if (text ~ /[—―]/) report(file, line, "PROSE-23 em dash", text)
}
