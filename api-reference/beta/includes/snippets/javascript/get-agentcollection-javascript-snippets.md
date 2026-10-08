---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let agentCollection = await client.api('/agentRegistry/agentCollections/{agentCollectionId}')
	.version('beta')
	.get();

```