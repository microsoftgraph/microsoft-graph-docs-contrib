---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let collections = await client.api('/agentRegistry/agentInstances/{agentInstanceId}/collections')
	.version('beta')
	.get();

```