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
    }
  ]
};

await client.api('/storage/fileStorage/containerTypeRegistrations/52a2630c-5e6a-41ff-8645-15406bafe66a')
	.version('beta')
	.put(fileStorageContainerTypeRegistration);

```