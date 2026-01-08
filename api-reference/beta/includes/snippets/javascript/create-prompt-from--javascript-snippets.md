---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const prompt = {
  '@odata.type': '#microsoft.graph.security.securityCopilot.prompt',
  type: 'prompt',
  content: 'who am I',
};

await client.api('/security/securityCopilot/workspaces/default/sessions/ecdfb9b3-58f5-457f-a18c-4a477890b252/prompts')
	.version('beta')
	.post(prompt);

```