---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let agentInstance = await client.api('/agentRegistry/agentInstances/{agentInstanceId}')
	.version('beta')
	.get();

```