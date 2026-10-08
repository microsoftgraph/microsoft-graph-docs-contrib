---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sponsors = await client.api('/applications/{id}/microsoft.graph.agentIdentityBlueprint/sponsors')
	.version('beta')
	.get();

```