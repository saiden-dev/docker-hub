# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Auto-generated Ruby client for Docker Hub API. The gem is generated from Docker's OpenAPI spec using OpenAPI Generator, then post-processed to fix generator bugs.

## Commands

```bash
# Generate and install gem locally (version: {api-version}.{git-hash})
rake install

# Run fix script standalone (after manual generation)
ruby scripts/fix_generated_code.rb [--quiet]

# Trigger CI publish (GitHub Actions)
gh workflow run publish.yml --field force_build=true
```

## Architecture

```
.
├── docker-hub/           # Generated gem (DO NOT EDIT - regenerated each build)
│   ├── lib/docker-hub/
│   │   ├── api/          # API client classes (RepositoriesApi, OrgsApi, etc.)
│   │   └── models/       # Request/response models
│   └── docker-hub.gemspec
├── scripts/
│   └── fix_generated_code.rb   # Post-generation fixes (CRITICAL)
├── tasks/
│   └── install.rb              # Local install logic
└── .github/workflows/
    └── publish.yml             # CI: generate → fix → publish to RubyGems
```

## Post-Generation Fixes

OpenAPI Generator produces broken Ruby code. `scripts/fix_generated_code.rb` fixes:

1. **Nil checks** - Removes `fail ArgumentError` for fields Docker returns as null despite spec saying required
2. **Enum validators** - Removes validators where API returns values not in spec
3. **Regex patterns** - Removes broken `Regexp.new(/.../)` with bad escaping
4. **Range guards** - Adds nil guards to `if x < 0` checks

## Versioning

- **Local builds**: `{api-version}.{git-short-hash}` (e.g., `2-beta.abc1234`)
- **Published releases**: `{api-version}.{increment}` (e.g., `2-beta.3`)
- OpenAPI Generator pinned to **7.19.0** - fixes tested against this version

## CI Workflow

1. Checks Docker spec etag against `.spec-etag` to detect changes
2. Generates Ruby client with OpenAPI Generator
3. Runs fix script
4. Publishes to RubyGems via Trusted Publishing
5. Creates GitHub Release

Workflow only builds when spec changes OR `force_build=true`.
