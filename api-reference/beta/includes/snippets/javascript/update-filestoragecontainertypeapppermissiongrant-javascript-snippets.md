---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fileStorageContainerTypeAppPermissionGrant = {
  applicationPermissions: ['full']
};

await client.api('/storage/fileStorage/containerTypeRegistrations/21b52d99-7114-4c47-80b3-362b6a0bba3a/applicationPermissionGrants/11335700-9a00-4c00-84dd-0c210f203f00')
	.version('beta')
	.update(fileStorageContainerTypeAppPermissionGrant);

```