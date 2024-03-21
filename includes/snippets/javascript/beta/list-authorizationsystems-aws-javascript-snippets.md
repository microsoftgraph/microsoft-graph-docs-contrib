---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let awsAuthorizationSystem = await client.api('/external/authorizationSystems/microsoft.graph.awsAuthorizationSystem')
	.version('beta')
	.get();

```