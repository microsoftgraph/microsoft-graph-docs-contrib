---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let azureAuthorizationSystemTypeAction = await client.api('/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/actions/{id}')
	.version('beta')
	.get();

```