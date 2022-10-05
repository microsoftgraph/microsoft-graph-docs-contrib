---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleDefinition = {
  description: 'An example custom role',
  displayName: 'ExampleCustomRole',
  rolePermissions: 
    [
        {
            allowedResourceActions: 
            [
                'Microsoft.CloudPC/CloudPCs/Read'
            ]
        }
    ],
    condition: 'null'
};

await client.api('/roleManagement/cloudPC/roleDefinitions')
	.version('beta')
	.post(unifiedRoleDefinition);

```