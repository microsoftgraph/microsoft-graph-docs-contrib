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
    '77504268-3426-435e-99c0-9bc8656bc20e'
  ]
};

await client.api('/applications/graph.agentIdentityBlueprint/e5006f10-6462-4816-97ad-7f5a53204d11')
	.version('beta')
	.update(agentIdentityBlueprint);

```