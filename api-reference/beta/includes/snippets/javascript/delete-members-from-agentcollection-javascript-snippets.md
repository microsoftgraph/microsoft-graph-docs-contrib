---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/agentRegistry/agentInstances/{agentInstanceId}/collections/{agentCollectionId}/members/{id}/$ref')
	.version('beta')
	.delete();

```