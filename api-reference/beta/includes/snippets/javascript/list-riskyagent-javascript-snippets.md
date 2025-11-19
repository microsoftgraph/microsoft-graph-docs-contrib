---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let riskyAgents = await client.api('/identityProtection/riskyAgents')
	.version('beta')
	.get();

```