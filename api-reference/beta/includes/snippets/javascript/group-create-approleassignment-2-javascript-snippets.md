---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const appRoleAssignment = {
  principalId: '8fce32da-1246-437b-99cd-76d1d4677bd5',
  resourceId: '9028d19c-26a9-4809-8e3f-20ff73e2d75e',
  appRoleId: 'ef7437e6-4f94-4a0a-a110-a439eb2aa8f7'
};

await client.api('/servicePrincipals/9028d19c-26a9-4809-8e3f-20ff73e2d75e/appRoleAssignments')
	.version('beta')
	.post(appRoleAssignment);

```