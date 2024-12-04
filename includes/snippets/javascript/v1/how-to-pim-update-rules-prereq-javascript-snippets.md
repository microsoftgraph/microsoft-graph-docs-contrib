---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleManagementPolicyAssignments = await client.api('/policies/roleManagementPolicyAssignments')
	.filter('scopeId eq \'/\' and scopeType eq \'DirectoryRole\' and roleDefinitionId eq \'9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3\'')
	.get();

```