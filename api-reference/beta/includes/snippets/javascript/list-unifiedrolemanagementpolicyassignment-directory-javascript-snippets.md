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
	.filter('scopeId eq \'/\' and scopeType eq \'Directory\'')
	.get();

```