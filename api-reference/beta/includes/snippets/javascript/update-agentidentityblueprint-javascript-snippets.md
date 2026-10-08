---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agentIdentityBlueprint = {
  displayName: 'My New Name'
};

await client.api('/applications/{id}/microsoft.graph.agentIdentityBlueprint')
	.version('beta')
	.update(agentIdentityBlueprint);

```