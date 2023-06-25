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
	.filter('scopeId eq \'60bba733-f09d-49b7-8445-32369aa066b3\' and scopeType eq \'Group\'')
	.get();

```