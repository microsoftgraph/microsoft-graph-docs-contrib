---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const appRoleAssignment = {
    principalId: 'b8afc02cb-4d62-4dba-b536-9f6d73e9e26',
    resourceId: '89473e09-0737-41a1-a0c3-1418d6908bcd',
    appRoleId: '00000000-0000-0000-0000-000000000000'
};

await client.api('/servicePrincipals/89473e09-0737-41a1-a0c3-1418d6908bcd/appRoleAssignedTo')
	.post(appRoleAssignment);

```