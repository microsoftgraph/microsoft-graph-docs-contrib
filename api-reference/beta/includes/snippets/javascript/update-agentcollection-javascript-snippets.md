---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agentCollection = {
  displayName: 'New Display Name'
};

await client.api('/agentRegistry/agentCollections/{agentCollectionId}')
	.version('beta')
	.update(agentCollection);

```