---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agentIdentityBlueprint = {
  managerApplications: [
    'b43716e4-8cd1-4e88-b4ef-94611f4c6c46'
  ]
};

await client.api('/applications/graph.agentIdentityBlueprint/e5006f10-6462-4816-97ad-7f5a53204d11')
	.version('beta')
	.update(agentIdentityBlueprint);

```