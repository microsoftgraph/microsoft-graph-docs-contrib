---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleAssignments = await client.api('/roleManagement/directory/roleAssignments')
	.filter('principalId eq \'d9771b4c-06c5-491a-92cb-3aa4e225a725\'')
	.get();

```