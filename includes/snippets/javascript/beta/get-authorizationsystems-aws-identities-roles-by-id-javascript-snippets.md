---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let awsRole = await client.api('/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/roles/{id}')
	.version('beta')
	.get();

```