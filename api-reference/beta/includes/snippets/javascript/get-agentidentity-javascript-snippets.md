---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let agentIdentity = await client.api('/servicePrincipals/{id}/microsoft.graph.agentIdentity')
	.version('beta')
	.get();

```