# Project Context: Homebrew Tap

This is a Homebrew tap repository for managing custom formulae and casks.

## Project Overview

- **Purpose:** Central location for Homebrew formulae and cask definitions
- **Structure:** Standard Homebrew tap layout with `Formula/` and `Casks/` directories
- **Maintainer:** Brian Lai

## Key Directories

- `Formula/` - Homebrew formula definitions
- `Casks/` - Homebrew cask definitions (macOS applications)
- `context/` - PARA workflow context and planning documents

## Development Guidelines

- All code changes must go through the PARA workflow (plan → branch → PR → merge)
- Document decisions and rationale in plan documents
- Test formulae locally before committing
- Keep commit messages clear and descriptive

## Common Tasks

- Adding new formula: Update `Formula/` with new `.rb` file
- Adding new cask: Update `Casks/` with new `.rb` file
- Updating existing formula: Modify corresponding file and bump version

## References

- [Homebrew Tap Documentation](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap)
- PARA Methodology: See `~/.claude/CLAUDE.md`
