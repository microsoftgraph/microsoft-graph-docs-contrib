---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const inheritablePermission = {
  inheritableScopes: {
    '@odata.type': 'microsoft.graph.noScopes'
  }
};

await client.api('/applications/bc057821-f236-49d6-9f2c-1ebf43e9437a/microsoft.graph.agentIdentityBlueprint/inheritablePermissions/00000003-0000-0000-c000-000000000000')
	.version('beta')
	.update(inheritablePermission);

```