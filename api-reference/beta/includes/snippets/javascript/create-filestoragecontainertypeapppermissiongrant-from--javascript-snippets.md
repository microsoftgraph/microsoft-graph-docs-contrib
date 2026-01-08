---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fileStorageContainerTypeAppPermissionGrant = {
  delegatedPermissions: ['readContent', 'writeContent'],
  applicationPermissions: ['full']
};

await client.api('/storage/fileStorage/containerTypeRegistrations/33225700-9a00-4c00-84dd-0c210f203f01/applicationPermissionGrants/11335700-9a00-4c00-84dd-0c210f203f00')
	.version('beta')
	.put(fileStorageContainerTypeAppPermissionGrant);

```