---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleDefinition = {
  description: 'Role 1 description',
  displayName: 'Role 1',
  rolePermissions: 
    [
        {
            allowedResourceActions: 
            [
                'microsoft.xdr/securityposture/read'
            ]
        }
    ]
};

await client.api('/roleManagement/defender/roleDefinitions')
	.version('beta')
	.post(unifiedRoleDefinition);

```