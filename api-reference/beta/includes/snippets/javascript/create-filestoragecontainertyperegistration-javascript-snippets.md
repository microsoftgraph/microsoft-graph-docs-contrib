---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fileStorageContainerTypeRegistration = {
  applicationPermissionGrants: [
    {
      appId: '11335700-9a00-4c00-84dd-0c210f203f00',
      delegatedPermissions: ['readContent', 'writeContent'],
      applicationPermissions: ['full']
    },
    {
      appId: 'd893fd02-3578-4c7f-bd85-12fc3358af48',
      delegatedPermissions: ['readContent'],
      applicationPermissions: ['read']
    }
  ]
};

await client.api('/storage/fileStorage/containerTypeRegistrations/de988700-d700-020e-0a00-0831f3042f00')
	.version('beta')
	.put(fileStorageContainerTypeRegistration);

```