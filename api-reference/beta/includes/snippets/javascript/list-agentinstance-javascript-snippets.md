---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let agentInstances = await client.api('/agentRegistry/agentInstances')
	.version('beta')
	.get();

```