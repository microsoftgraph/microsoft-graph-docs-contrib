---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assumableRoles = await client.api('/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/users/{id}/assumableRoles')
	.version('beta')
	.get();

```