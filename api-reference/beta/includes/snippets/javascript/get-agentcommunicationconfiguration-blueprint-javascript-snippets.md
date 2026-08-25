---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let communicationConfiguration = await client.api('/applications/2a665ec0-9d8b-43ed-9fa3-2b4c5d6e7f80/microsoft.graph.agentIdentityBlueprint/communicationConfiguration')
	.version('beta')
	.get();

```