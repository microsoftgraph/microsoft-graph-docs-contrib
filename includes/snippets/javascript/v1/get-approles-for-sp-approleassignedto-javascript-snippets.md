---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let appRoleAssignedTo = await client.api('/servicePrincipals/7ea9e944-71ce-443d-811c-71e8047b557a/appRoleAssignedTo')
	.get();

```