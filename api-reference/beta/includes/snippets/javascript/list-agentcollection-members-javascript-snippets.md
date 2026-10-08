---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/agentRegistry/agentInstances/{agentInstanceId}/collections/{agentCollectionId}/members')
	.version('beta')
	.get();

```