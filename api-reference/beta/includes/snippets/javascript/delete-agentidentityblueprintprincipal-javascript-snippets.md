---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/servicePrincipals/{id}/microsoft.graph.agentIdentityBlueprintPrincipal')
	.version('beta')
	.delete();

```