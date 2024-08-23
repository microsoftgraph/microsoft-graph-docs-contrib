---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let azureRoleDefinition = await client.api('/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/roleDefinitions/{id}')
	.version('beta')
	.get();

```