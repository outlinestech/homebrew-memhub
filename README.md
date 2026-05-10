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

## What it does

Connects MemHub to Claude Code in one command. After `memhub auth login`,
Claude Code automatically has access to your memory layer in every session —
no manual config, no API key copying.
