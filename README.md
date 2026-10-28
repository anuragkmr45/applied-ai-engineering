# Persistent AI Engineering Mentor Workspace (Codex + Strix)

**Purpose:** Preserve your tutor's teaching style, curriculum, and learning progress between Codex chats/models—and make it readable by other local coding agents. This is **not** another PDF/Word course. It's a portable Markdown + Git context system.

## What's inside

- `AGENTS.md` — Codex reads these instructions at session start; tutor expectations and checkpoint behavior.
- `.agents/skills/ai-engineering-tutor/SKILL.md` — reusable tutor skill (`$ai-engineering-tutor` when available).
- `context/STUDENT_PROFILE.md` — your existing background and chosen learning preferences.
- `context/CURRICULUM.md` — entire 10-phase Senior AI Engineer coverage map.
- `context/LEARNING_STATE.md` — **current progress + exact next step**, read every session.
- `context/DECISIONS.md` — settled choices and why.
- `sessions/` — dated notes that survive chat loss.
- `context/STRIX_NOTES.md` — navigation hints; verify against checked-out source.
- `strix/` — **create separately as a Git submodule** pointing at upstream Strix.
- `prompts/` — ready-made start and checkpoint messages.
- `reference/` — a copy of the user's original Strix-focused tutor notes.

## Setup (macOS / Linux; Windows: use PowerShell/git shell)

1. Extract the ZIP as a folder named `ai-engineering-mentor-workspace`.
2. Install [Codex CLI](https://learn.chatgpt.com/docs/codex/cli) if needed. If you already use npm, `npm install -g @openai/codex` is an option. Run `codex` once to sign in.
3. **Run Codex from this workspace root**, not inside `strix/` (a nested Git repo has its own root; parent AGENTS.md may not load there).
4. Initialize Git and add a version-pinned copy of Strix:

```bash
cd /path/to/ai-engineering-mentor-workspace
git init
git submodule add https://github.com/usestrix/strix.git strix
git add .
git commit -m "Initialize persistent AI engineering mentor workspace"
```

The first submodule addition checks out the upstream default branch at a **specific SHA**; future updates are deliberate and versioned. If you don't want Strix yet, omit the submodule command and start conceptual lessons now.

5. Start the tutor:

```bash
codex
```

Codex reads `AGENTS.md` automatically. Paste the prompt in `prompts/START_SESSION.md`, or use the included shell launcher `./start-mentor.sh` on macOS/Linux.

## Choosing a model

Start with `/model` in Codex; the picker lists what **your account/client** actually supports.
- **GPT-6.1 Sol (if available)**, default/Medium effort: normal learning, source-reading and architecture discussions.
- Use **High** effort for involved repository tracing, debugging and design reviews.
- Use a lower-cost/fast available model for simple recaps or tidy notes. Reasoning settings and model availability vary.
- Do **not** hard-code model choice into tutor memory: the curriculum and checkpoints work independently of the model.

## How persistence works

**A new chat does not automatically know the old chat transcript.** Codex loads `AGENTS.md`; the instructions make it read `LEARNING_STATE.md` and related files. **After each meaningful lesson or decision**, the agent updates state and writes a dated session note. You can force this anytime by saying **`checkpoint`** or pasting `prompts/SAVE_CHECKPOINT.md`.

- **Same machine, different chat/model:** disk files persist immediately after they are saved.
- **Different machine:** optionally create a **private** Git remote and use normal `git push` / `git pull` for synchronized files. Create the private remote first; do not push secrets, credentials or sensitive scan evidence.
- **Switch to another agent:** point it at this workspace, and ask it to read `AGENTS.md` and the context files. Adapter files for Claude, Cursor, and Copilot are provided as best-effort entry points; different agents do **not** universally read AGENTS.md or share their chats.
- **Two simultaneous tutors:** treat Git as a coordination tool; check diffs/merge conflicts before one session overwrites another's `LEARNING_STATE.md`.

Codex also has `codex resume` for its **own previous local sessions**, but that's not cross-agent memory and isn't a replacement for these files.

## Updating Strix safely

Strix is an **upstream reference**; leave it clean until you choose an implementation exercise. To update to upstream main deliberately:

```bash
git submodule update --remote strix
git -C strix rev-parse HEAD
git add strix
# Commit the submodule SHA change only after confirming it is intentional.
```

Log the checked-out SHA when explaining Strix-specific implementation paths. Do not run scans against unauthorized systems.

## Optional: private Git backup

Create an empty **private** repository in your own Git hosting account, then:

```bash
git remote add origin <YOUR_PRIVATE_REPOSITORY_URL>
git branch -M main
git push -u origin main
```

Git stores curriculum, notes and progress—**not** credentials. Review `git status` before pushing.

## What this does NOT promise

- It does not automatically import your original temporary ChatGPT transcript (the important decisions are summarized in `sessions/2026-10-22-temp-chat-migration.md`).
- It does not give agents a shared internal memory, identical personalities, or live sync for unsaved chat messages.
- It does not run models fully offline merely because Codex runs in your terminal. Provider-backed models may use remote inference; Codex offers different provider modes separately.
- Instructions cannot guarantee that an agent checkpoints perfectly; use `checkpoint`, inspect the updated file, and Git-commit meaningful milestones.
