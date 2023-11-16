---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const roleAssignment = {
  '@odata.type': '#microsoft.graph.roleAssignment',
  displayName: 'Display Name value',
  description: 'Description value',
  resourceScopes: [
    'Resource Scopes value'
  ]
};

await client.api('/deviceManagement/roleDefinitions/{roleDefinitionId}/roleAssignments/{roleAssignmentId}')
	.update(roleAssignment);

```