agent_id: garden
summary: What a garden's Org files say, and how its tree of responsibilities and projects is divided
subjects: document/file, scope/canon
policies: VO-01, VO-02, VO-03, VO-04, VO-05, VO-06
---

This file describes the gnome to whatever reads it. The lines above
the three dashes are read by a bugflow server and by the format tests;
the text below is for a person.

- `agent_id` is the reviewer's id on a server. The commit status on a
  pull request has this name.
- `summary` is one line saying what the policies read.
- `subjects` lists the kinds of evidence the policies ask for:
  `document/file` is one Org file, and `scope/canon` is every file of a
  scope.
- `policies` lists every policy. A policy judges a repository on a
  server only when the server's declarations also list it for that
  repository.
