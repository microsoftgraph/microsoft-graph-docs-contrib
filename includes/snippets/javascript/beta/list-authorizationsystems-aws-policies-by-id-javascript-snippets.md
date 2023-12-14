---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let awsPolicy = await client.api('/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies/{id}')
	.version('beta')
	.get();

```