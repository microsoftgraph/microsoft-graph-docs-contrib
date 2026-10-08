---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sponsors = await client.api('/servicePrincipals/{id}/microsoft.graph.agentIdentity/sponsors')
	.version('beta')
	.get();

```