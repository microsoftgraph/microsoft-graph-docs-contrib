---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleDefinition = {
  description: 'Update basic properties and permission of application registrations',
  displayName: 'ExampleCustomRole',
  rolePermissions: 
    [
        {
            allowedResourceActions: 
            [
                'Microsoft.CloudPC/CloudPCs/Read',
                'Microsoft.CloudPC/CloudPCs/Reprovision'
            ]
        }
    ]
};

await client.api('/roleManagement/cloudPC/roleDefinitions/b7f5ddc1-b7dc-4d37-abce-b9d6fc15ffff')
	.version('beta')
	.update(unifiedRoleDefinition);

```