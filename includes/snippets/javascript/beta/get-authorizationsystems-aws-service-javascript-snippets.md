---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authorizationSystemTypeService = await client.api('/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/services/{id}')
	.version('beta')
	.get();

```