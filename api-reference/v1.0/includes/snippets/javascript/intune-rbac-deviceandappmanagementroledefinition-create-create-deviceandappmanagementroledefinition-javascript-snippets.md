---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const roleDefinition = {
  '@odata.type': '#microsoft.graph.deviceAndAppManagementRoleDefinition',
  displayName: 'Display Name value',
  description: 'Description value',
  rolePermissions: [
    {
      '@odata.type': 'microsoft.graph.rolePermission',
      resourceActions: [
        {
          '@odata.type': 'microsoft.graph.resourceAction',
          allowedResourceActions: [
            'Allowed Resource Actions value'
          ],
          notAllowedResourceActions: [
            'Not Allowed Resource Actions value'
          ]
        }
      ]
    }
  ],
  isBuiltIn: true
};

await client.api('/deviceManagement/roleDefinitions')
	.post(roleDefinition);

```