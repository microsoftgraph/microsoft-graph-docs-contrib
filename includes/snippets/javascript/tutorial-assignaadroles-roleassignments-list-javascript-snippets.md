---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleAssignments = await client.api('/roleManagement/directory/roleAssignments')
	.filter('principalId eq \'7146daa8-1b4b-4a66-b2f7-cf593d03c8d2\'')
	.get();

```