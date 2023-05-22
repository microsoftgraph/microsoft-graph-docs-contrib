---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let unifiedRoleAssignment = await client.api('/roleManagement/exchange/roleAssignments/6f0be5be-49f3-42e6-8086-cdcd67b6eac0')
	.version('beta')
	.get();

```