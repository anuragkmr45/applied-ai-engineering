# Strix Code Reading Map — Hints, Not Verified Assertions

Reference repository: https://github.com/usestrix/strix (latest public code preferred). The paths below were **suggested in the student's attachments** and earlier chat; they are a *navigation checklist*, not confirmation that those files/functions exist unchanged in the selected commit.

- Scan initiation/configuration: `strix/core/runner.py`, `strix/core/inputs.py`
- Root agent and execution: `strix/core/execution.py`, `strix/core/agents.py`, `strix/agents/factory.py`
- Prompt rendering: `strix/agents/prompt.py`, `strix/agents/prompts/system_prompt.jinja`, `scope.jinja`
- Skills: `strix/skills/`, `strix/tools/load_skill/tool.py`
- Tools and MCP: `strix/tools/`
- Models/providers: `strix/llm/`, `strix/config/models.py`
- Memory/context: `strix/llm/compaction.py`, shared state/notes and sessions (discover paths at checkout)
- Sandbox/runtime: `strix/runtime/`
- Findings/report: `strix/report/`
- Tests: `tests/`; benchmark documentation may live elsewhere or in `benchmarks/README.md`.

## Evidence procedure for every repo-specific claim
1. Run `git -C strix rev-parse HEAD` and record the revision here or in the dated session note.
2. Use search, source reading and `nl -ba` / editor line-number views to trace the call chain in execution order.
3. Cite exact file paths, function names and line numbers (at that checkout); separate documentation, tested behavior and inference.
4. Identify Python-enforced guarantees versus instructions the LLM might not follow.
5. Never execute security-testing tools against external targets without explicit user authorization and scope.

## Known source status
- **Local Strix checkout:** not initialized by this migration package.
- **Pinned Strix commit:** TBD after `git submodule add`.
