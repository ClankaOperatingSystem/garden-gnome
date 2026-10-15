policy_id: VO-06
subject: document
summary: The prose has no em dashes
model_class: none
evidence: document/file
quotable_name: document
graded: yes
quotes_code: no
ceiling: warn
implemented: check
clause: PROSE-23 no em dashes
---
Answered by the check `check-em-dashes` in `scripts/`.
It reports each line of prose that holds an em dash or a horizontal bar, under PROSE-23, graded warn.
An en dash in a range, such as 2–4, is not reported.

It does not read source, example, quote or verse blocks, drawers, lines that start with =#=, or table rows.
It removes inline code, link targets and text in double quotation marks from a line before it reads the line.
=== calibration
Not measured.
