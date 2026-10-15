---
name: garden-gnome-structure
description: Analyse how a garden divides its work among scopes, projects and tasks, put each proposed refinement to the person, and write the accepted ones as tasks in the scope where each belongs. Use when asked to find structural problems, overlapping or misplaced projects, projects to combine, split or close, or to turn the notes of a prose rewrite into tasks. Not for doing the restructuring, which those tasks schedule, and not for prose, which the rewrite skill covers.
---

# Find and raise structural refinements

The rules are the structure doctrine in `references/doctrine/02-structure.md`.
The policies ST-01 and ST-02 in `references/policies/` say how each rule is judged.
Read both before you start.

This skill raises tasks.
It does not move, merge, split or close anything.
The person decides each proposal, and the tasks that it writes schedule the work.

## Gather the evidence

1. Read the garden's map, and the entrance of every responsibility and project:
   its purpose, its outcome, its tasks and its review date.
2. Read the configuration of each scope, to see which children it declares.
3. Leave out archives, attics, ephemera, and the contents of mounted repositories.
   Read only how the garden refers to a mounted repository.
4. Read the notes of the last prose rewrite, if there are any.
   They list stale facts, contradictions and history written into pages.

A whole garden is too much for one reading.
Give the analysis to one agent with the brief below, or divide it by scope.

## Propose

For each candidate refinement, write:
- the proposal, in one line
- the clause that it answers
- the evidence: each file, with the words quoted exactly
- the scope where the task belongs: the smallest scope that contains everything it touches
- a confidence: high, medium or low

Check the high-confidence evidence yourself in the files before you show it.
Drop a candidate whose evidence does not hold.

Show the person the proposals as tables, one table for each scope, with the confidence of each.
Ask which to write.

## Write the tasks

1. Before you edit a file, ask other sessions that work in the garden whether they are editing it.
   Leave out any file that they name.
2. Insert each task in its scope's task area,
   at the level of the other tasks there, before the review item.
   Change no other line.
3. Start the heading with an imperative verb.
   Write "Decide whether…" for a proposal of low or medium confidence.
4. In the body, state the proposal, the reason and the evidence,
   with file paths in inline code and quotations exact.
5. For the notes of a prose rewrite that are not structural,
   write one task in each project: "Bring the pages of this project up to date",
   with one line for each passage, after you check that the note still holds.
6. Run the garden's lint, and commit by named paths when the person says so.

## Brief for the analysis agent

Read-only.
Change no file.

Read the structure doctrine and the scope contract of the garden.
Read the map, every entrance, every configuration, and the notes of the last rewrite.
Find candidates for these:
- projects or responsibilities that overlap and could be combined
- work inside one project that serves another outcome and could be split out
- work kept in the wrong scope, or away from the product that it serves
- projects whose outcome is met, or that schedule nothing
- facts or rules with more than one home

For each candidate, give the proposal, the clause, the evidence with exact quotations,
the scope where the task belongs, and a confidence.
Report in under 1500 words, by scope, the highest confidence first.
