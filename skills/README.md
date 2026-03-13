# Skills

This package ships a shared skill library.

Within that library, the core model is:

- `default/` = baseline skills every new agent should have access to
- `package activation` = the currently active workflow grouping for the role or task

One of those baseline defaults should be visual communication.

Agents should not rely on prose alone when a visual map would improve understanding.

This repo starts with two visible layers:

- `agent-onboarding/` = the core bootstrap mechanism
- `default/` = the baseline skills every new agent should have

Over time, the recommended shape is:

- `global library` = all shared skills
- `packages` = grouped skill sets such as research, frontend, or data acquisition
- `activation` = which package is currently in use

Do not assume every agent needs a separate installed skill set.

Prefer universal access to the library plus selective activation of packages.
