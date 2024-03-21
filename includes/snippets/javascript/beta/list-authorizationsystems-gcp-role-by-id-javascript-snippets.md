---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let gcpRole = await client.api('/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/roles/{id}')
	.version('beta')
	.get();

```