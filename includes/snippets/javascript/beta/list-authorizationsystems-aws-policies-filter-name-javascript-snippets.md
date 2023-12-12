---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let policies = await client.api('/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies')
	.version('beta')
	.filter('displayName eq \'AdministratorAccess\'')
	.get();

```