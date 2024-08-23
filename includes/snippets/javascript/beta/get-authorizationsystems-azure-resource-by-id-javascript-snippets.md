---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let azureAuthorizationSystemResource = await client.api('/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/resources/{id}')
	.version('beta')
	.get();

```