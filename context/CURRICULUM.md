# Senior AI Software Engineer Curriculum — AI Engineering First, Strix Throughout

**How to use:** This is the agreed *coverage map*, not a rigid timetable. First build working conceptual familiarity across the ecosystem. Only later commit to substantial implementation. Related topics should be taught in sensible batches rather than one per chat turn. Mark completed work in `LEARNING_STATE.md`, not by checking boxes solely because it was mentioned.

## Phase 0 — Big-picture mental map (orientation)
- Draw an end-to-end AI application and a tool-using agent: UI/API → model request → messages/context → model → optional tool request → application/tool → response → outputs, telemetry, state.
- Distinguish a simple LLM call, deterministic workflow, tool-using agent, and multi-agent system.
- Identify where prompts, skills, MCP, RAG, memory, context, evals and security fit. **Start here** so future concepts have a home.

## Phase 1 — LLM engineering fundamentals
1. What LLMs do, next-token generation, capabilities, limitations and nondeterminism.
2. Tokens, tokenization, context windows, output limits.
3. LLM APIs/SDKs and request/response lifecycle; model messages (system/developer/user/assistant/tool).
4. Model responses, reasoning support, streaming, latency and cost.
5. Model choice, context length, temperature where supported, reasoning effort, provider differences and safe key management.
6. Tool-call concept preview, model usage metrics and error scenarios.

## Phase 2 — Prompt engineering
1. Anatomy: role, objective, instructions, context, constraints, workflow, success criteria, failure behavior.
2. Instruction priority and stable instructions vs runtime user input vs untrusted data.
3. Zero-/few-shot prompting, examples and representative cases.
4. System prompt vs user task vs tool result; multi-turn durability.
5. Prompt templating (Jinja), rendering, conditionals and dynamic scope.
6. Structured-output prompting versus schema validation; versioning, tests, conflicting prompts and prompt injection fundamentals.

## Phase 3 — Agent skills, tool integration and MCP
1. Difference between complete prompts, reusable agent skills, and executable tools.
2. `SKILL.md` metadata, discovery, on-demand vs preloaded knowledge, modularity, versioning.
3. Function/tool calling: tools schemas, arguments, validation, coercion and errors.
4. Structured outputs, JSON Schema, Pydantic/Zod and backend validation.
5. MCP clients/servers, transport, tool discovery and dispatch, authentication.
6. Shell/browser/API tools; idempotency, read-only vs state-changing tools and permissions.

## Phase 4 — AI agent & agentic architecture
1. When to use LLM calls vs deterministic workflows vs autonomous agents.
2. Model → tool → observation → repeat execution cycle; practical ReAct mental model.
3. Agent lifecycle, planning, task decomposition, bounded autonomy and stop conditions.
4. Orchestration, state machines, retries and resumption.
5. Human-in-the-loop: steering, pauses and approval when required.
6. Sandboxes, runtime isolation and trustworthy tool execution.

## Phase 5 — Context engineering, memory and multi-agent systems
1. What belongs in instructions, user input, skill, retrieved context, tool result, or persistent state.
2. Context selection, token budgets, output truncation, compaction, summarization and prompt caching.
3. Conversation history vs durable memory vs shared notes, tasks and persisted checkpoints.
4. Orchestrator/root and worker/child agents; specialization, delegation and handoffs.
5. Parallel agents vs parallel tool calls; communication, concurrency, coordination failures and duplicated work.
6. Multi-agent evaluation and when additional agents create unnecessary complexity.

## Phase 6 — RAG and knowledge systems (general AI, not presumed Strix engine features)
1. Embeddings, vectors, semantic similarity and vector stores.
2. Loading documents, chunking, metadata, semantic/hybrid search.
3. Retrieval, reranking, grounding, citations and relevance assessment.
4. RAG architecture and evaluation, stale data, access controls and hallucination handling.
5. When to use RAG, prompts/context injection, reusable skills or fine-tuning.
6. Model adaptation/fine-tuning decision criteria; no need for deep training math initially.

## Phase 7 — AI security and guardrails
1. Direct/indirect prompt injection and untrusted content boundaries.
2. Authorization, tool scopes, secret management, provider credentials, MCP authentication.
3. Sandboxing, tool permissions, read-only vs write operations and deterministic policy checks.
4. Data privacy, cross-user/tenant boundaries and sensitive logging risks.
5. Human approval for high-impact actions; evaluation of adversarial scenarios.

## Phase 8 — Production AI engineering
1. Service architecture, queues, background jobs, async workflows and streaming.
2. OpenAI/other providers, provider routing/compatibility, fallbacks, structured tool call differences.
3. Retries, rate limits, timeouts, budgets, resumable state and provider preflight.
4. Tracing, logging, monitoring, token/cost accounting, latency and observability.
5. Caching, performance optimization, deployment, scaling and CI/CD.
6. Trade-offs among quality, reliability, cost, speed, accuracy and safety.

## Phase 9 — Testing, evaluations and quality
1. Deterministic unit/integration tests vs inherently variable model behavior.
2. Golden datasets, prompt regressions, representative normal/edge/adversarial cases.
3. Tool selection/argument checks, task completion, schema validity, grounding and hallucination rates.
4. Human review vs deterministic graders vs LLM graders, limitations of each.
5. Multi-agent handoff/coordination evals, benchmark limitations, model upgrades.
6. Strix-specific findings, evidence, confidence, deduplication, report formats and security testing coverage.

## Phase 10 — Senior-level AI system design
1. Design reviews: LLM vs workflow vs agent vs multi-agent; build-vs-buy and framework selection.
2. Architecture of tool integrations, trust boundaries, memory, context, state, and RAG.
3. Long-running agent reliability, checkpoints, concurrency, scale and budgets.
4. Incident/debugging flows, evaluation evidence and production readiness.
5. Architectural decision records and trade-off communication; meaningful Strix contribution.

## Applied learning (AFTER conceptual readiness)
- Review actual Strix scan setup to report flow: CLI/config → runner → sandbox → root agent → prompts/skills → tools → child agents/state → findings/report.
- Build a small **code-reading / code-review assistant agent** in TypeScript or Python: model API, function tools, skills, context handling, safe sandbox, state, evals, tracing.
- Compare how Strix implements the comparable components; when concepts don't exist there, use a separate example.
- Grow into a capstone with multi-agent handoffs, safe tool permissions, context budgeting, regression tests and documented architecture.
