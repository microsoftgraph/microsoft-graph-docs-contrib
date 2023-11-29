---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resources = await client.api('/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/resources')
	.version('beta')
	.get();

```