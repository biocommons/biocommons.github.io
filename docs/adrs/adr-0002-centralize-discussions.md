# ADR-0002: Centralize Organization Discussions

**Status:** Accepted  
**Date:** 2026-01-26  
**Deciders:** [Your name/team]  
**Discussion:** https://github.com/biocommons/discussions/[thread-link-when-created]

## Context

The Biocommons organization has approximately 10 project repositories, with discussions enabled on only 2 of them (anyvar and eutils). As our organization grows, we need a clear strategy for where different types of conversations should happen to avoid fragmentation and duplication.

Several factors are in tension:
- Users need to know where to ask questions or propose ideas
- Developers need a place for cross-project coordination and architectural discussions
- Project-specific issues and bugs should stay close to their codebases
- We want to avoid duplicate conversations across multiple repositories
- We need to balance centralization (easier to find) with distribution (closer to relevant code)

GitHub provides multiple venues for conversation:
- Repository Issues (actionable, tracked items)
- Repository Discussions (threaded conversations, Q&A)
- Organization-level discussions (requires a dedicated repository)

## Decision

We will create a dedicated `biocommons/discussions` repository to serve as the central hub for organization-wide conversations.

**Scope of org discussions:**
- Cross-project feature ideas and proposals
- Architectural decisions affecting multiple projects
- General questions ("Which Biocommons tool should I use for...?")
- Strategy and roadmap discussions
- Questions from users who are unsure where to post

**Scope of project repos:**
- Bugs in a specific tool (Issues)
- Feature requests for a single project (Issues)
- Project-specific usage questions (Discussions if enabled, otherwise Issues)
- Implementation details and technical discussions for that project

We will keep discussions enabled on anyvar and eutils (the two repos that currently have them) but disable them on other projects to reduce fragmentation. Other projects will direct users to either Issues (for bugs/features) or the org discussions (for questions).

We will provide clear guidelines and decision trees to help users and contributors know where to post.

## Consequences

**Positive:**
- Single, predictable place for cross-cutting conversations
- Reduced duplication and fragmentation
- Easier for new users to find help and get oriented
- Better visibility for architectural and strategic discussions
- Clear separation between actionable work (Issues) and discussion (Discussions)

**Negative:**
- Requires ongoing moderation and guidance to help users post in the right place
- Some users may still be confused about where to post
- Initial setup and documentation work required
- Need to maintain and communicate these conventions

**Neutral:**
- Creates another repository to monitor (though it's not code, so lower maintenance)
- May need to occasionally move discussions between venues during early adoption

## Alternatives Considered

**Use .github repository for discussions:**
- Pro: Special GitHub-recognized name, some automatic discoverability
- Con: Conflates automation/actions infrastructure with community discussion
- Rejected because we want clear semantic separation

**Enable discussions on all project repos:**
- Pro: Everything stays close to the code
- Con: Fragments conversations, makes cross-project discussions difficult
- Con: Creates many places to monitor and maintain
- Rejected due to fragmentation concerns

**Disable all discussions, use Issues only:**
- Pro: Simpler, one venue per repo
- Con: Issues are for actionable work, not general Q&A or brainstorming
- Con: Doesn't provide a venue for cross-project conversations
- Rejected because we need a discussion venue

**Use external forum (Discourse, Slack, etc.):**
- Pro: Purpose-built for community discussions
- Pro: Better threading and notification options
- Con: Fragments community across multiple platforms
- Con: Additional platform to maintain
- Rejected to keep everything in GitHub where our code and issues already are
