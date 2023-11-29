---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let azureIdentity = await client.api('/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/all/{id}')
	.version('beta')
	.get();

```