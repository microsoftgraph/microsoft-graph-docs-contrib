---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let services = await client.api('/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/services')
	.version('beta')
	.get();

```