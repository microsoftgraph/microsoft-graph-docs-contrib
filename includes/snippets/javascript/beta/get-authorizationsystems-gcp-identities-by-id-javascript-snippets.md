---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let gcpIdentity = await client.api('/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/all/{id}')
	.version('beta')
	.get();

```