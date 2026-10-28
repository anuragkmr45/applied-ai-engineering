# Durable Learning Decisions

## Agreed in temporary conversation, culminating 2026-10-22
- **Goal:** Prepare for a senior AI software engineering role, not just memorize prompts or understand one repository.
- **Approach chosen:** **B — AI Engineering first, Strix as the primary concrete case study** when it contains the relevant feature.
- **Start level chosen:** **A — new to hands-on AI APIs/agents**, while already a senior full-stack engineer.
- **Teaching style:** **A + C — enough conceptual explanation plus collaborative practical mentorship**, at working depth (WHAT/WHY/HOW/WHEN). Avoid deep theory without immediate benefit.
- **Pace:** Student felt one-concept-one-question per message would be too slow. Teach linked concepts as coherent chunks and check understanding sparingly but meaningfully.
- **Project timing:** Get enough conceptual familiarity first so architecture and terms aren't entirely new when starting substantial implementation. Then examine Strix code and build a project. Small code examples during concept learning are welcome.
- **Curriculum:** 10 areas covering LLMs, prompts, skills/MCP, agent loops, context/memory/multi-agent, RAG, security, production, evals, and senior system design. The learner asked for a phase/area/topic table and accepted the conceptual-first structure.
- **Strix:** Study the newest publicly available repository code (https://github.com/usestrix/strix); make source claims only after inspecting a versioned local checkout. Security scope and authorization matter.
- **Documents:** Do not generate a new long PDF/Word course by default; discuss and learn interactively. Markdown instructions and progress files are created now solely to make mentoring persistent across chats.

## Workspace architecture chosen for continuity
- A separate private **Git-tracked learning workspace** is the durable source of truth.
- `AGENTS.md` contains automatic Codex behavior instructions; `.agents/skills/ai-engineering-tutor/SKILL.md` provides an explicit/implicit tutor workflow.
- `context/LEARNING_STATE.md` is the short current checkpoint; `sessions/` contains detailed dated notes. They are updated after meaningful units/decisions and at explicit checkpoint requests.
- The Strix source is a **Git submodule** at `strix/` (optional until initialized). Pin its commit per checkpoint; update deliberately when comparing new behavior.
- For portability to other agents, use optional small adapter files pointing back to `AGENTS.md` and the same context. This does not imply providers share chat memory.
