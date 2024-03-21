---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roles = await client.api('/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/roles')
	.version('beta')
	.get();

```