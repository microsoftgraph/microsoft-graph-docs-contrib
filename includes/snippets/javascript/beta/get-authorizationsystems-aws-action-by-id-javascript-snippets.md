---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let awsAuthorizationSystemTypeAction = await client.api('/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions/{id}')
	.version('beta')
	.get();

```