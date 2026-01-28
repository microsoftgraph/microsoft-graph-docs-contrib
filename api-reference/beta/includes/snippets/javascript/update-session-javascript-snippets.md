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
  displayName: 'API Test: Who am I?'
};

await client.api('/security/securityCopilot/workspaces/default/sessions/ecdfb9b3-58f5-457f-a18c-4a477890b252')
	.version('beta')
	.update(session);

```