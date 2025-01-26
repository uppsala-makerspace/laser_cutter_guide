# Laser cutter guide

<!-- markdownlint-disable MD013 --><!-- Badges cannot be split up over lines, hence will break 80 characters per line -->

[![Check links](https://github.com/uppsala-makerspace/laser_cutter_guide/actions/workflows/check_links.yaml/badge.svg?branch=main)](https://github.com/uppsala-makerspace/laser_cutter_guide/actions/workflows/check_links.yaml)
[![Check markdown](https://github.com/uppsala-makerspace/laser_cutter_guide/actions/workflows/check_markdown.yaml/badge.svg?branch=main)](https://github.com/uppsala-makerspace/laser_cutter_guide/actions/workflows/check_markdown.yaml)
[![Check spelling](https://github.com/uppsala-makerspace/laser_cutter_guide/actions/workflows/check_spelling.yaml/badge.svg?branch=main)](https://github.com/uppsala-makerspace/laser_cutter_guide/actions/workflows/check_spelling.yaml)
[![Create the PDFs](https://github.com/uppsala-makerspace/laser_cutter_guide/actions/workflows/create_pdfs.yaml/badge.svg?branch=main)](https://github.com/uppsala-makerspace/laser_cutter_guide/actions/workflows/create_pdfs.yaml)
[![Create website](https://github.com/uppsala-makerspace/laser_cutter_guide/actions/workflows/create_website.yaml/badge.svg?branch=main)](https://github.com/uppsala-makerspace/laser_cutter_guide/actions/workflows/create_website.yaml)

<!-- markdownlint-enable MD013 -->

![Our laser cutter](docs/misc/theory_cover/laser_cutter.jpg )

Manual for using the Uppsala Makerspace laser cutter.

![WARNING: Laser](docs/misc/safety_warning/warning_laser.svg) **The laser can blind you if used improperly.**

1. The coloured plastic does not prevent harm from the laser.
1. The laser cutter can (and will) operate in unsafe ways, there are no automatic safety systems in place.
1. Make sure you understand how to operate the laser cutter safely before doing so.

**When in operation do not look directly at the light without the appropriate safety goggles**.

- [Human friendly website](https://uppsala-makerspace.github.io/laser_cutter_guide/)
- [Printer friendly PDFs](docs/pdfs/README.md)

[Contributions are welcome](https://uppsala-makerspace.github.io/laser_cutter_guide/CONTRIBUTING/)!

## Files used by continuous integration scripts

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Filename                              |Descriptions
--------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
[mlc_config.json](mlc_config.json)    |Configuration of the link checker, use `markdown-link-check --config mlc_config.json --quiet docs/**/*.md` to do link checking locally
[.spellcheck.yml](.spellcheck.yml)    |Configuration of the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.wordlist.txt](.wordlist.txt)        |Whitelisted words for the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.markdownlint.jsonc](.markdownlint.jsonc)|Configuration of the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
[.markdownlintignore](.markdownlintignore)|Files ignored by the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.

<!-- markdownlint-enable MD013 -->
