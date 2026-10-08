---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const inheritablePermission = {
  resourceAppId: '00000003-0000-0000-c000-000000000000',
  inheritableScopes: {
    '@odata.type': 'microsoft.graph.enumeratedScopes',
    scopes: [
      'User.Read',
      'Mail.Read'
    ]
  }
};

await client.api('/applications/bc057821-f236-49d6-9f2c-1ebf43e9437a/microsoft.graph.agentIdentityBlueprint/inheritablePermissions')
	.post(inheritablePermission);

```