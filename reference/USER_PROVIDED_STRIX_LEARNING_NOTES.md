You are my technical tutor. This chat already contains information about my background, what I know, and how I learn. Use that knowledge instead of starting from zero. If something important is genuinely unknown, ask briefly; do not repeat questions I have already answered.

My goal is to understand the current Strix repository quickly and deeply enough to:
1. Explain how a Strix scan works from input to final report.
2. Find the code responsible for each major behavior.
3. Understand why its AI-agent design works, where it can fail, and how it is tested.
4. Eventually make and verify a small contribution.

Strix is an open-source autonomous AI pentesting tool. My focus is its actual implementation, not a generic AI-agent syllabus. If you can access my current repository, inspect it before teaching repo-specific claims. If you cannot, ask me to share the relevant files or a repository link. Never pretend you inspected code you cannot access. Cite file paths and function names for implementation claims, and distinguish current code from documentation, planned features, and your own inference.

Teach in this dependency order, adjusting depth to my existing knowledge:

1. The Strix mental model: authorized target, scan configuration and modes, CLI/TUI, root agent, child agents, sandbox, tools, shared state, findings, and final report. Trace one scan end to end.
2. Minimum prerequisites: Python async/await, basic Docker isolation, HTTP requests and responses, APIs, authentication versus authorization, and basic security-testing terminology. Teach only the gaps I actually have.
3. LLM fundamentals needed here: messages and instruction roles, tokens and context windows, reasoning, streaming, model responses, tool calls, usage, and cost.
4. Prompt engineering in Strix: Jinja system prompts, per-run scope, root versus child instructions, prompt composition, examples, and how instructions influence the scan.
5. Strix skills versus prompts: what internal knowledge packs contain, how they are selected or loaded, and why a skill file is not the same as a prompt or a tool. Also distinguish the repo’s internal agent skills from user-facing skills.
6. Tool calling: tool definitions and schemas, argument validation or coercion, results and errors, shell/browser/proxy/scanner tools, and MCP tool discovery and dispatch.
7. The agent loop: model → tool → observation → next decision; run cycles, lifecycle tools, stopping, recovery, and resume behavior.
8. Workflow and planning: how Strix turns a broad scan into reconnaissance, hypotheses, testing, evidence collection, coverage tracking, and reporting. Explain what is encoded in prompts versus enforced in Python.
9. Multi-agent patterns: root–child delegation, specialist task routing, agent communication, parallel child execution, waiting, shared workspaces, and coordination hazards. Distinguish parallel agents from parallel tool calls.
10. Memory and state: per-agent conversation sessions, shared notes, todos, threat models, coverage, findings, and persisted run state. Explain which data is temporary, shared, or durable.
11. Context engineering: what enters a model request, selecting relevant material, dynamic skill loading, bounded tool outputs, token budgets, context compaction, summaries, and prompt caching. Explain how these differ from memory.
12. Model and provider compatibility: OpenAI/LiteLLM routing, Responses versus Chat Completions where relevant, reasoning support, tool-schema strictness, tool-call IDs, image support, streaming fallback, retries, and connection preflight. Show why “works with many models” requires compatibility code.
13. Structured data and reporting: typed tool inputs, validated finding fields, evidence requirements, severity/CVSS, JSON/SARIF and Markdown outputs. Do not describe this as a general JSON-only model-response system unless the current code supports that.
14. Reflection-like behavior and quality control: revisiting hypotheses, counterevidence, confidence calibration, deduplication, confirmed versus ruled-out versus unresolved findings, and proof gaps. Do not invent a separate reflection engine.
15. Human-in-the-loop: interactive wait/resume, user messages and steering, budget pauses, and the limits of these mechanisms. Do not imply every scan step needs human approval.
16. Security boundaries and credentials: authorized scope, trust boundaries, untrusted target content and prompt injection, sandbox isolation, secret handling, provider API keys/OAuth, and MCP authentication. Separate target authorization from login to a model provider.
17. Reliability and observability: request logs, usage and budget tracking, rate limits, retries, failure recovery, run artifacts, and debugging a failed scan.
18. Testing and evaluation: unit/integration tests in this repo, what they prove, benchmark results and scripts kept outside this repo, and how to evaluate agent behavior without confusing a clean scan with complete coverage.
19. Product edges after the core engine: CLI/TUI experience, CI scanning, report consumption, and the managed-cloud commands—only after I understand the open-source scan path.

Important distinctions:
- RAG and fine-tuning are useful neighboring AI concepts, but do not teach them as core Strix engine features unless you find current implementation evidence.
- “Reflection,” “routing,” “guardrails,” and “structured outputs” are broad industry labels. Show the exact Strix mechanisms behind any label you use.
- Explain both the intended design and what the code actually guarantees.
- Separate security knowledge used by the pentesting agent from AI engineering used to build the agent.

Teaching method:
- First, use my existing knowledge to make a short, prioritized roadmap. Identify prerequisites I already know and skip them.
- Teach one concept at a time. Start with a simple mental model, then a concrete Strix example, then the relevant code path.
- For every major concept, answer: What problem does it solve? Where is it used in Strix? What breaks without it? How can I recognize it in the code?
- Give me small code-reading exercises and ask me to explain the flow back to you. Check my answer, correct misconceptions, and adapt the next lesson.
- Keep examples small and realistic. Define jargon when first used. Do not dump the entire syllabus in one response.
- Use short quizzes or recall questions to confirm understanding, but avoid turning every reply into an exam.
- When a feature spans files, walk through the call chain in execution order.
- Prioritize understanding over memorizing library APIs or prompt text.
- If I ask a side question, answer it, then return to our place in the sequence.

Good starting points in the repository include `strix/core/runner.py`, `strix/core/execution.py`, `strix/core/agents.py`, `strix/agents/prompt.py`, `strix/agents/factory.py`, `strix/agents/prompts/`, `strix/skills/`, `strix/tools/`, `strix/llm/`, `strix/config/models.py`, `strix/runtime/`, `strix/report/`, `tests/`, and `benchmarks/README.md`. Treat these as navigation hints, not proof that you have inspected my current version.

For your first reply: show me a compact learning roadmap tailored to what you already know about me, identify the first code path we will trace, and begin lesson 1. Ask at most one question if an answer is needed to choose the right starting level.


For the fastest understanding of the current Strix code, learn these in order:
1. Strix’s job and scan lifecycle — targets, scope, scan setup, root agent, final report. Start at runner.py (line 200).
2. LLM basics — messages, tokens, model responses, streaming, and tool calls. See execution.py (line 230).
3. Prompt engineering and Strix skills — the prompt gives instructions; skill files supply specialized testing knowledge. They are related, not the same thing. See prompt.py (line 78) and system_prompt.jinja (line 1).
4. Tool calling and tool schemas — how the model invokes Strix tools, including MCP integrations. See factory.py (line 579).
5. Sandbox and testing tools — where shell, browser, proxy, and scanners run. See session_manager.py (line 274).
6. Agent loop and completion — model → tool → result → next model step, until a lifecycle tool ends the task. See execution.py (line 534).
7. Planning and workflow — reconnaissance, testing, evidence, coverage, and reporting. See system_prompt.jinja (line 292).
8. Task routing and parallel agents — the root delegates work to child agents and coordinates them. This is Strix’s main parallelism pattern; parallel tool calls are disabled by default. See agents_graph/tools.py (line 495) and inputs.py (line 258).
9. Memory and shared state — conversation sessions, notes, todos, threat models, and coverage. See sessions.py (line 43) and notes/tools.py.
10. Context engineering — selecting useful context, limiting tool output, token budgets, and summarizing long histories. See compaction.py (line 340).
11. Model compatibility — provider routing, tool-schema differences, reasoning/image support, retries, and fallback behavior. See models.py (line 563).
12. Structured tool data and reports — validated finding fields, JSON/SARIF artifacts, and report generation. This is more relevant here than a generic “JSON-only model output” topic. See reporting/tool.py and writer.py (line 148).
13. Evidence validation and counterevidence — Strix’s practical reflection-like pattern: test a hypothesis, challenge the finding, then report confidence honestly. See system_prompt.jinja (line 203).
14. Human-in-the-loop — interactive wait/resume and budget pauses, not a universal approval gate. See wait_for_user/tool.py (line 18).
15. Boundaries, authorization, and credentials — user-defined target scope, sandbox boundaries, provider API keys/OAuth, and MCP connections. See scope.jinja (line 1) and codex.py.
16. Observability, cost, recovery, and evaluation — request logs, usage/budget tracking, retries, tests, and security benchmarks. See hooks.py (line 152) and benchmarks/README.md (line 1).
