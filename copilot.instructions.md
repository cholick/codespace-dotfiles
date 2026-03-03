---
applyTo: "**"
---
- Never commit changes without explicitly asking for confirmation first.
- Never push to a remote repository.
- Never install software or tools without asking first. If a tool would be useful, ask about it and let the user decide how to install it.
- Do not add custom failure messages to test checks (e.g., `require.NoError(t, err)` not `require.NoError(t, err, "msg")`, `self.assertEqual(a, b)` not `self.assertEqual(a, b, "msg")`). Test names and check expressions should be self-explanatory.
