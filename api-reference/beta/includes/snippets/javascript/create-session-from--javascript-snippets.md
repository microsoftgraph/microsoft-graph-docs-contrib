---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const session = {
  '@odata.type': '#microsoft.graph.security.securityCopilot.session',
  displayName: 'Who am I'
};

await client.api('/security/securityCopilot/workspaces/default/sessions')
	.version('beta')
	.post(session);

```