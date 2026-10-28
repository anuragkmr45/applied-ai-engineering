# Migration Note — Previous Temporary Chat (2026-10-22)

This file is a **structured handoff summary**, not an exact full transcript. The old temporary chat is not automatically imported into local Codex.

## Starting point and intent
The learner is a senior full-stack engineer moving into a senior AI agents / AI software engineering role. Initially asked to start with prompt engineering and skills, but clarified that the real target is broad engineering knowledge across a Strix-like project and beyond. Learner prefers enough working understanding before serious implementation; no deep research math.

## Discussion outcomes
- Initially selected teaching style A+C: concept and interaction, WHAT/WHY/HOW/WHEN.
- Asked not to stretch each small concept into many quiz turns.
- Wants the entire AI ecosystem: LLM APIs, prompt/context engineering, skills, tools/MCP, agent loops, multi-agent, memory/state, RAG, security, provider compatibility, observability, evaluation and architecture.
- Chose **AI Engineering first (B)** rather than tracing Strix first; Strix is the source-code case study.
- Wants the latest public Strix source, with exact implementation evidence instead of generic guesses.
- Selected AI development experience level **A** (not yet extensively using LLM APIs).
- Prioritized learning concepts first so starting the actual project does not feel unfamiliar.
- Rejected another immediate PDF/document as the default learning mode; needs stable context because temporary chat could disappear.

## Earlier exercises and evidence
1. User proposed a customer-support prompt with company policies, domain routing and JSON output. Tutor noted the need for real policy access, explicit categories and schema enforcement. This was introductory discussion, not confirmed production mastery.
2. Code-review classification exercise: A=task, B=prompt, C=skill, D=tool schema, E=context (corrected after E was first classified skill). The student explained E provides information to work on.
3. PR dynamic-vs-static example: user correctly said every PR has a different number/diff and repo context evolves.
4. Prompt injection comment example was posed but unanswered; e-commerce order-status API question was posed but unanswered.

## What to do next
Start in Phase 0 with a concise architecture map of a complete AI software application (including prompts, model calls, tool execution, context, memory, skills, RAG, evaluations and security), then transition to Phase 1 LLM fundamentals. Include a relatable backend analogy. Don't turn it into a quiz until a coherent concept group is complete.
