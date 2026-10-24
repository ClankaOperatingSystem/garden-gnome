# garden-gnome

Standards for a garden: the Org files that hold a tree of
responsibilities, projects and tasks. The standards cover two things:
the voice of the prose in those files, and the structure of the tree.
This repository holds a doctrine of clauses, a policy for each
judgement, cases that test the judge, and skills that apply them.

This repository is a gnome: a methodology that also holds a doctrine,
its policies and its cases. bugflow's
[What a gnome is](https://github.com/bugflow/bugflow/blob/master/docs/gnomes.md)
defines a gnome and a maintainer's tasks, its
[policy package](https://github.com/bugflow/bugflow/blob/master/docs/policy-package.md)
specifies each file, and its
[words](https://github.com/bugflow/bugflow/blob/master/docs/words.md)
give each term one line.

Two things read this repository and nothing in it is written for one
alone:

- **A garden** declares it as a methodology in its configuration, at a
  tag, as ClankOS's `clankos-run help install` says:

      methodologies:
        - source: https://github.com/ClankaOperatingSystem/garden-gnome.git
          ref: TAG

  The install copies each skill under `skills/` into the garden's
  skills, and the garden's lint runs the checks in their `scripts/`.

- **A bugflow server** judges pull requests by it when a binding
  deploys it. bugflow's
  [review document](https://github.com/bugflow/bugflow/blob/master/docs/review.md)
  says what a review writes and where each part comes from.

## Skills

`skills/garden-gnome-rewrite/` rewrites a garden's prose into the voice,
one scope at a time, changing wording only.
`skills/garden-gnome-structure/` finds how a garden's work could be
divided better, and raises each accepted proposal as a task.
The `check-*` scripts in a skill's `scripts/` answer the policies that a
script can judge, and a garden's lint runs them.

## One source, compiled skills

`doctrine/` and `policies/` at the root are the originals. After a
change in either, run `make`, which writes each skill's copy in its
`references/`. The copies are committed, and `make check` fails when a
copy differs from what `make` writes.

## Checks

    make check

checks every file against the formats in the policy package, and checks
that each skill's copies match the root.
