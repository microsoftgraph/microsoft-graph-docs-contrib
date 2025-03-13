---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceAndAppManagementRoleAssignment = {
  '@odata.type': '#microsoft.graph.deviceAndAppManagementRoleAssignment',
  displayName: 'Display Name value',
  description: 'Description value',
  resourceScopes: [
    'Resource Scopes value'
  ],
  members: [
    'Members value'
  ]
};

await client.api('/deviceManagement/roleAssignments')
	.post(deviceAndAppManagementRoleAssignment);

```