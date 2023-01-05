---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let transitiveRoleAssignments = await client.api('/roleManagement/directory/transitiveRoleAssignments')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.filter('principalId eq \'2c7936bc-3517-40f3-8eda-4806637b6516\' and roleDefinitionId eq \'fe930be7-5e62-47db-91af-98c3a49a38b1\'')
	.get();

```