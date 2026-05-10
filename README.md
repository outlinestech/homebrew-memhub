# homebrew-memhub

Homebrew tap for the [MemHub CLI](https://github.com/outlinestech/memhub).

## Install

    brew install outlinestech/memhub/memhub

## First-time setup

    memhub auth login

## Commands

    memhub search "your query"
    memhub save "note to remember"
    memhub projects
    memhub auth status
    memhub auth logout

## Using MemHub in Claude Code

Once installed, you don't need to remember CLI flags — just talk to Claude
Code naturally and it will call MemHub through the MCP connector. Examples:

**Saving memories:**

- "Save to MemHub: we use ivfflat index for MVP scale"
- "Save this decision to MemHub: we chose Postgres over MongoDB"

**Searching:**

- "Search MemHub for anything about our auth implementation"
- "What does MemHub know about our database setup?"

**Projects:**

- "List my MemHub projects"
- "Re-save this to MemHub under the backend project"
- "What MemHub project was this saved to?"

**Tip:** Always include the word "MemHub" in your phrase — otherwise Claude
Code may use its own local memory instead of MemHub.

## What it does

Connects MemHub to Claude Code in one command. After `memhub auth login`,
Claude Code automatically has access to your memory layer in every session —
no manual config, no API key copying.
