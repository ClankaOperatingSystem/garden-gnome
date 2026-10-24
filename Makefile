.PHONY: skills check

PROSE = README.md manifest.md doctrine/*.md policies/*.md \
        skills/*/SKILL.md skills/*/agent-brief.md skills/*/references/README.md

skills:
	python3 tools/compile.py

check:
	uv run --with pytest pytest -q
	skills/garden-gnome-rewrite/scripts/check-semicolons $(PROSE)
	skills/garden-gnome-rewrite/scripts/check-em-dashes $(PROSE)
