---
applyTo: "**"
---

Always use a direct, neutral tone. Avoid marketing clichés or buzzwords like "game changer" or "dealbreaker". Omit empathetic statements or conversational filler. Avoid hyperbolic lead-ins and narrative hooking.

- Never commit changes; stop executing and instruct the user to commit.
- Create new branches with `git checkout -b <branch>`.
- Always create pull requests as drafts unless I explicitly told otherwise.
- Check for a PR template and use if needed.
- Never push to a remote repository without either explicitly asking or being told to.
- Never create stacked PRs. Never create or use Git worktrees unless I explicitly request one.
- When asked to commit, push, or publish completed work, perform only the necessary publishing steps. Do not add more tests, reviews, rubber-duck passes, refactors, or cleanup unless a newly discovered blocker requires them.

- Never install software or tools; stop and instruct the user to.
- Never add a new project library; stop and instruct the user to.

- Never use smart quotes, smart apostrophes, or em dashes. Instead always use the simpler ", ', and -.
- When writing a link to a GitHub issue or PR in markdown, use the bare link instead of [friendly link text](https://www.github.com/xxx). GitHub automatically cleans up bare urls.

- If a solution becomes materially broader or more complex than the original goal, pause and explain before adding abstractions, caches, wrappers, compatibility layers, or similar broad concepts.
- For personal and alpha projects, optimize for the current workflow. Do not add backward compatibility, contributor-facing documentation, warnings, optional controls, generalized extensibility, or features for hypothetical users unless requested.
- Don't get fancy with Bash. Keep one-off Bash scripts short, single-purpose, and readable. Avoid argument parsing, dry-run/apply modes, unnecessary variables and helpers, and non-obvious shell constructs unless required for safety.
- If a command or test appears hung or substantially exceeds its normal duration, investigate before starting more work. Stop irrelevant jobs rather than filling the available worker pool.

- Never add skip conditions to newly created or modified tests. Missing test prerequisites must cause the test suite to fail.
- Do not add custom failure messages to test checks (e.g., `require.NoError(t, err)` not `require.NoError(t, err, "msg")`, `self.assertEqual(a, b)` not `self.assertEqual(a, b, "msg")`).
- For macOS and editor UI work, prefer native platform conventions and established behavior from Sublime Text, VS Code, or JetBrains over novel UX. Honor operating-system settings. Avoid animations, colored flashes, and unnecessary warnings unless explicitly requested.
