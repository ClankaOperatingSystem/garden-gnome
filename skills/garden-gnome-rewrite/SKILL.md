---
name: garden-gnome-rewrite
description: Rewrite the prose of a garden's Org files into the garden voice, changing wording only, one scope at a time with the person's review. Use when asked to rewrite, clean up, de-slop or plain-English the prose of a garden or of one scope, or when the voice checks report findings. Not for changing structure, facts or tasks, which the structure skill and the person decide.
---

# Rewrite a garden's prose

The voice is the doctrine in `references/doctrine/`.
The policies in `references/policies/` say how each part of it is judged.
Read both before you change a word.

A rewrite changes wording only.
It does not change what a file says, what it links to, or how it is organised.
Facts that are wrong, stale or contradictory are noted for the structure pass, not fixed.

## Choose the files

1. Take the live Org files of the garden or the scope that the person names.
2. Leave out archives, attics, ephemera (directories that start with `_`),
   and every repository mounted in the garden, which has its own conventions.
3. Leave out what the person excludes, such as a journal or personal notes.
4. Order the scopes so that the files which state the rules come first,
   then the small scopes, then the large ones.
5. Count the words in each scope.
   A scope that is too large for one session becomes a task in that scope.

## Keep these unchanged

- heading lines, TODO keywords, tags, SCHEDULED and DEADLINE lines
- drawers, property values, IDs and logbook entries
- `#+` keyword lines, except an em dash in a `#+TITLE`, which becomes a colon
- source, example and quote blocks, inline code, and table structure
- every link, target and description alike
- the person's quoted words, and their own coined phrases and figures
- the certainty of each claim: keep may, might, must, should and needed to
- the specific verb, when the plain word would mean something else

A heading that breaks the voice, or that another file links to by its text, is noted for the structure pass.

## Rewrite one scope

1. Rewrite one typical file of the scope.
2. Show the person a typical passage before and after, with the rule behind each change.
3. When the person approves, rewrite the rest of the scope.
   Fall back to one file at a time where a change is not obvious.
4. Run the checks below on every changed file.
5. Read a sample of the diff yourself, and fix any rewording that changes meaning.
6. Show the person how to read the diff, the changes that need their judgement,
   and the notes for the structure pass.
7. Commit the scope when the person says so, by named paths, one commit per scope.

A large scope can be divided among parallel agents.
Give each agent [the agent brief](agent-brief.md) and a list of files of about ten thousand words.
Check every agent's files yourself before you show the scope to the person.

## Check

Run these from the root of the repository that holds the files:

- `scripts/compare-structure FILE...` reports a file whose links, headings,
  drawers or keyword lines differ from the committed version,
  or that has fewer modal words than before.
  It must print nothing.
- `scripts/check-semicolons` and `scripts/check-em-dashes` report prose lines
  with a semicolon or an em dash, under PROSE-22 and PROSE-23.
  Give them the changed files.
  A finding in a heading is noted, not fixed.

## Notes for the structure pass

While you rewrite, record what you must not fix:
- facts that look wrong or stale, and contradictions between files
- history or status written into a page, where it belongs in a task or the archive
- rulings given with who decided and when
- headings that state an event or a claim, where a task heading names an action
- anything you could not reword without changing its meaning

Give the notes to the person with each scope.
The structure skill turns them into tasks.
