---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const appRoleAssignment = {
    principalId: 'b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94',
    resourceId: '7ea9e944-71ce-443d-811c-71e8047b557a',
    appRoleId: 'df021288-bdef-4463-88db-98f22de89214'
};

await client.api('/servicePrincipals/7ea9e944-71ce-443d-811c-71e8047b557a/appRoleAssignedTo')
	.post(appRoleAssignment);

```