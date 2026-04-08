---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let agentCardManifest = await client.api('/agentRegistry/agentInstances/{agentInstanceId}/agentCardManifest')
	.version('beta')
	.get();

```