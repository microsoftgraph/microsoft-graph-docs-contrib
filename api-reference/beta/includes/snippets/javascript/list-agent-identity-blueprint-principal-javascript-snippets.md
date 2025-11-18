---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let servicePrincipal = await client.api('/servicePrincipals/microsoft.graph.agentIdentityBlueprintPrincipal')
	.version('beta')
	.get();

```