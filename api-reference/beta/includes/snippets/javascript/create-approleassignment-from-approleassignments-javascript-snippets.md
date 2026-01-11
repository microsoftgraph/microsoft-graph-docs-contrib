---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const appRoleAssignment = {
  '@odata.type': '#microsoft.graph.appRoleAssignment',
  deletedDateTime: 'String (timestamp)',
  appRoleId: 'Guid',
  creationTimestamp: 'String (timestamp)',
  principalDisplayName: 'String',
  principalId: 'Guid',
  principalType: 'String',
  resourceDisplayName: 'String',
  resourceId: 'Guid'
};

await client.api('/users/{usersId}/appRoleAssignments')
	.version('beta')
	.post(appRoleAssignment);

```