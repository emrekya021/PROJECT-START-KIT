# MCP

This directory documents the MCP tools and integrations used by this repository.

## Purpose
This folder is a human-readable inventory and usage guide.

It should explain:
- which MCP servers are relevant
- what each one is used for
- when to use them
- important restrictions or safety notes

## Important Note
This directory is not the source of truth for live MCP configuration.

Actual working MCP configuration lives in tool-specific configuration layers, such as:
- Claude configuration
- Codex configuration

Use this folder to document intent, not runtime state.

## Recommended Contents
For each MCP integration, document:
- name
- purpose
- common use cases
- read-only vs write access expectations
- important warnings

## Notes
- Keep entries short and practical.
- Prefer documenting why and when to use an MCP, not low-level implementation trivia.
- Update this folder when the project starts depending on new external tools or data sources.
