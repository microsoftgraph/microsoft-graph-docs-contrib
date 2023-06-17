---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const appRoleAssignment = {
  principalId: '4628e7df-dff3-407c-a08f-75f08c0806dc',
  principalType: 'User',
  appRoleId: '18d14569-c3bd-439b-9a66-3a2aee01d14f',
  resourceId: 'a8cac399-cde5-4516-a674-819503c61313'
};

await client.api('/servicePrincipals/b00c693f-9658-4c06-bd1b-c402c4653dea/appRoleAssignments')
	.version('beta')
	.post(appRoleAssignment);

```