---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const agentIdentityBlueprintPrincipal = {
  appId: '00001111-aaaa-2222-bbbb-3333cccc4444'
};

await client.api('/servicePrincipals/microsoft.graph.agentIdentityBlueprintPrincipal')
	.post(agentIdentityBlueprintPrincipal);

```