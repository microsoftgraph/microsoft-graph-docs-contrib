---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleAssignments = await client.api('/roleManagement/directory/roleAssignments')
	.filter(' principalId eq \'5bde3e51-d13b-4db1-9948-fe4b109d11a7\'')
	.get();

```