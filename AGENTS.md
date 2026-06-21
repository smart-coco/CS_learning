# AGENTS.md

## Repository purpose

Personal CS learning notes — a collection of Markdown reference docs organized by topic.  
Not a runnable project (no build, test, lint, or CI). No dependencies, no package manager, no config files beyond `.git/`.

## Structure

- `README.md` — learning philosophy & meta notes
- `note/` — topic directories, each with a primary `.md` file and optional `resource/` (images, PDFs, SQL) or `实例/` (code examples)
- Empty/placeholder directories: `note/OS/`, `note/python/` (only `hello.py`), `note/math/概率论.md`
- Some directory names are capitalized (`Git`, `OS`) — follow existing casing when adding new ones

## Conventions

- Notes are in Chinese, with code snippets and technical terms in English
- Each `.md` starts with a table of contents (anchor links)
- Resources go in `resource/image/` for images, `resource/` root for other files
- Hands-on examples go in `实例/` within the topic folder
- New notes go under `note/<topic>/<topic>.md`
