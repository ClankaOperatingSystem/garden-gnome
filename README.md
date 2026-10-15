# garden-gnome

Standards for a garden: the Org files that hold a tree of
responsibilities, projects and tasks. The standards cover two things:
the voice of the prose in those files, and the structure of the tree.
A doctrine of clauses, a policy for each judgement, cases that test the
judge, and skills that apply them.

This repository is a gnome: it implements the gnome protocol, which
bugflow's [policy package](https://github.com/bugflow/bugflow/blob/master/docs/policy-package.md) specifies.
[What a gnome is](https://github.com/bugflow/bugflow/blob/master/docs/gnomes.md) explains a gnome's parts, who reads each,
and a maintainer's tasks.

Two things read this repository:

- **A garden** installs its skills with the skills command-line tool:

      npx skills add ClankaOperatingSystem/garden-gnome

  or declares the repository as a methodology in its configuration.

- **A bugflow server** judges pull requests by it when a binding
  repository deploys it.

## Skills

`skills/garden-gnome-rewrite/` rewrites a garden's prose into the voice,
one scope at a time, changing wording only.
`skills/garden-gnome-structure/` finds how a garden's work could be
divided better, and raises each accepted proposal as a task.
The `check-*` scripts in a skill's `scripts/` answer the policies that a
script can judge, and a garden's lint runs them.

## One source, compiled skills

The doctrine and the policies are written once, in `doctrine/` and
`policies/` at the root of this repository. A bugflow server reads them
there.

The skills command-line tool copies a skill's directory and nothing
outside it. So `make` copies `doctrine/` and `policies/` into the
`references/` directory of each skill in `skills/`. The copies are
committed, and each skill installs complete in the usual way.

Edit the files at the root, never a copy in a skill. `make check` fails
when a copy differs from what `make` writes.

## Checks

    make check

checks every file against the formats in the policy package, and checks
that each skill's copies match the root.
