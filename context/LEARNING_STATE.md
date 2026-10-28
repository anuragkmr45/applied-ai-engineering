# Learning State — Checkpoint

**Last checkpoint:** 2026-10-22 (migrated from a temporary chat; actual new local sessions not yet held)
**Current position:** Phase 0 (big-picture AI application architecture orientation), then Phase 1 LLM Engineering Fundamentals.
**Active style:** Conceptual familiarity first; cohesive overview + practical example + brief review, rather than one definition/quiz per message. Strix is a code-backed case study after verifying the checkout.
**Project status:** No substantial student-built AI application has started. No confirmed local Strix checkout yet.
**Next step:** Introduce the mental map of a complete AI application and tool-using agent; then begin LLM APIs, messages, context windows, streaming and tool calling as a connected group. Ask at most one focused question at a natural stopping point; avoid repeating old onboarding questions.

## Verified understanding from previous chat
| Topic | Evidence | Confidence/status |
|---|---|---|
| Prompt vs task vs context vs skill vs tool schema | Classified A=task, B=prompt, C=skill, D=tool schema; initially confused E with skill, then correctly changed E to context with the explanation that it's information to work on. | Foundational recognition demonstrated; **not full module mastery**. |
| Static instructions vs dynamic PR data | Explained that PR numbers/diffs change from PR to PR and the repository also evolves. | Good initial reasoning. |

## Familiarity without verified mastery
- Saw introductory support-agent prompt constraints/hallucination scenarios.
- Saw initial prompt assembly TypeScript example and preliminary Strix skill-rendering explanation in earlier chat; these were not verified by student implementation.
- Discussed prompt injection via malicious source-code comments, but **no student answer was recorded**.
- Was asked whether a model can know order #12345's status from the user's message alone; **no student answer was recorded**.

## Not yet covered adequately
- LLM API hands-on integration, instruction roles, token/context budgeting, model providers, tool execution loops.
- Wider agent, multi-agent, memory, RAG, MCP, security, testing/eval and production architecture topics.
- Verified source traversal of an actual checked-out Strix version.
- Project implementation and a Strix code contribution.

## Decisions still open
- Exact first implementation project and language (TypeScript favored for examples, Python needed for Strix).
- Local checkout / pinned Strix commit not yet established.
- Git remote location for private backups: user chooses.

## Latest learner request
They want to move from an easily lost temporary chat to a local Codex workspace whose tutors share this file-backed context across new chats and preferably other coding agents.
