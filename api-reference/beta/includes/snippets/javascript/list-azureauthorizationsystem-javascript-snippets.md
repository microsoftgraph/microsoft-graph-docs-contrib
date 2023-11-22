---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let azureAuthorizationSystem = await client.api('/external/authorizationSystems/microsoft.graph.azureAuthorizationSystem')
	.version('beta')
	.get();

```