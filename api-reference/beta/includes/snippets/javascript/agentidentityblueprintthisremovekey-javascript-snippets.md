---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const removeKey = {
  keyId: 'Guid',
  proof: 'String'
};

await client.api('/applications/{id}/microsoft.graph.agentIdentityBlueprint/removeKey')
	.version('beta')
	.post(removeKey);

```