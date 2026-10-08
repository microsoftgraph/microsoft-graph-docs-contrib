---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let riskyAgent = await client.api('/identityProtection/riskyAgents/{riskyAgentId}')
	.version('beta')
	.get();

```