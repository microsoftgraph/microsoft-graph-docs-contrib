---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let gcpAuthorizationSystem = await client.api('/external/authorizationSystems/microsoft.graph.gcpAuthorizationSystem')
	.version('beta')
	.get();

```