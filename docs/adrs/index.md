# Architecture Decision Records

This directory contains Architecture Decision Records (ADRs) for the Biocommons organization.

## What is an ADR?

An Architecture Decision Record (ADR) captures an important architectural decision made along with its context and consequences. ADRs help us understand why decisions were made and provide a historical record of our technical choices.

## ADR Process

1. **Discussion**: Significant architectural or organizational decisions should be discussed in [biocommons/discussions](https://github.com/biocommons/discussions) under the Developers category
2. **Documentation**: Once a decision is made, create an ADR using the [template](template.md)
3. **Review**: Submit the ADR as a pull request to this repository for review
4. **Merge**: After approval, the ADR becomes part of our permanent record
5. **Reference**: Link back to the ADR from the original discussion thread

## ADR List

<!-- New ADRs should be added to the top of this list -->


## Creating a New ADR

1. Copy [template.md](template.md)
2. Name it `adr-NNNN-short-title.md` where NNNN is the next sequential number
3. Fill in all sections
4. Update this index with a link to your new ADR
5. Submit as a pull request

## ADR Numbering

ADRs are numbered sequentially starting from 0001. The number never changes, even if an ADR is superseded or deprecated.

## Status Values

- **Proposed**: Under consideration
- **Accepted**: Decision has been made and is in effect
- **Deprecated**: No longer relevant but kept for historical reference
- **Superseded by ADR-XXXX**: Replaced by a newer decision

## Notes

- ADRs are append-only; we don't modify existing ADRs except to update their status
- If a decision changes, create a new ADR that supersedes the old one
- Keep ADRs concise but complete - aim for 1-2 pages
- Focus on the "why" more than the "how"
