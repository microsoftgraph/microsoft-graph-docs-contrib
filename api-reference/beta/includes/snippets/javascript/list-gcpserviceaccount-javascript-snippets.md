---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let serviceAccounts = await client.api('/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/serviceAccounts')
	.version('beta')
	.get();

```