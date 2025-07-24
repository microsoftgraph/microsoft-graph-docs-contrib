---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleManagementPolicyAssignments = await client.api('/policies/roleManagementPolicyAssignments')
	.version('beta')
	.filter('scopeId eq \'/\' and scopeType eq \'DirectoryRole\' and roleDefinitionId eq \'62e90394-69f5-4237-9190-012177145e10\'')
	.expand('policy($expand=rules)')
	.get();

```