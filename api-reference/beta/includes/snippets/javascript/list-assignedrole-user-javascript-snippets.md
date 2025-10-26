---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignedRoles = await client.api('/users/{user-id}/employeeExperience/assignedRoles')
	.version('beta')
	.get();

```