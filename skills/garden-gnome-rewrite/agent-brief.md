# Brief for an agent that rewrites a batch of files

Give this brief to each agent, with its list of files and the path of this skill.
Replace FILES with the list.

---

You rewrite the prose of the Org files listed below into the garden voice.
Change wording only.
Do not commit, stage or touch any file outside the list.

Files:

    FILES

Read the voice first, in the skill's `references/doctrine/01-voice.md`.
Read one approved rewrite, if the person names a commit, and match its style and degree of change.

The rules that matter most in practice:
- Put one sentence or one clause on each line.
- Use no semicolons and no em dashes in prose.
- Keep each sentence to 25 words or fewer.
- Use the active voice, and name the actor.
- Restore dropped articles, subjects and verbs.
- Use plain verbs, not phrasal or Latinate ones.
- Write a sequence of three or more steps as a list.
- Turn questions to the reader into checks or statements.

Do not repeat these mistakes, which earlier agents made:
- Do not change the certainty of a claim.
  "Support needed to make X work" must not become "support that will make X work".
- Do not swap a specific verb for a vaguer one.
  "Bring up a server" means set it up, not start it.
- Do not paraphrase the person's own coined phrases and figures, even outside quotation marks.

Keep these unchanged:
- heading lines, TODO keywords, tags, SCHEDULED and DEADLINE lines
- drawers, property values, IDs and logbook entries
- `#+` keyword lines, except an em dash in a `#+TITLE`, which becomes a colon
- source, example and quote blocks, inline code, and table structure
- every link, target and description alike
- quoted words, verbatim
- the order of points, and every fact, number, date and commit id

Glossary and definition lists keep each term and its definition, in their order.
A file that says a tool generates it is not edited.
A sentence that is wrong, stale or contradicts another file is not fixed. Note it.

When you finish, run the skill's `scripts/compare-structure` on your files from the repository root.
It must print nothing.
Run `scripts/check-semicolons` and `scripts/check-em-dashes` on your files, and fix each finding in prose.

Report in under 300 words:
- the files that you changed, or skipped and why
- any line that a check reported, and why it stays
- notes for the structure pass: wrong or stale facts, contradictions, history or status in pages,
  rulings given with who and when, headings that state an event or a claim,
  and anything that you could not reword without changing its meaning

Do not paste the rewritten text.
