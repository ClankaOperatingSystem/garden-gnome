policy_id: VO-05
subject: document
summary: The prose has no semicolons
model_class: none
evidence: document/file
quotable_name: document
graded: yes
quotes_code: no
ceiling: warn
implemented: check
clause: PROSE-22 no semicolons
---
Answered by the check `check-semicolons` in `scripts/`.
It reports each line of prose that holds a semicolon, under PROSE-22, graded warn.
Headings are prose, so a heading with a semicolon is reported.

It does not read source, example, quote or verse blocks, drawers, lines that start with `#`, or table rows.
It removes inline code, link targets and text in double quotation marks from a line before it reads the line.
A quotation may run over several lines of a paragraph, and a blank line ends it.
=== calibration
Not measured.
