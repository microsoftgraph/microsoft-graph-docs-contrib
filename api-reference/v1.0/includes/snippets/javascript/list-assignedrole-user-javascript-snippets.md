---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignedRoles = await client.api('/users/e8d9f6a2-1c34-4b7a-9f11-2a4d8b7c9e01/employeeExperience/assignedRoles')
	.get();

```