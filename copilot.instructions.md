---
applyTo: "**"
---
- Never commit changes; stop executing and instruct the user to commit.
- Never install software or tools; stop and instruct the user to.
- Never push to a remote repository; stop and instruct the user to.
- Never add a new project library; stop and instruct the user to.
- Never visit any website except localhost.
- Do not add custom failure messages to test checks (e.g., `require.NoError(t, err)` not `require.NoError(t, err, "msg")`, `self.assertEqual(a, b)` not `self.assertEqual(a, b, "msg")`).
