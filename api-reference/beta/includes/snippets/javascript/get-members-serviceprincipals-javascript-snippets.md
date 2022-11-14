---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let servicePrincipal = await client.api('/groups/3802e9bb-0951-4e18-b9eb-f934b4241194/members/microsoft.graph.servicePrincipal')
	.version('beta')
	.get();

```