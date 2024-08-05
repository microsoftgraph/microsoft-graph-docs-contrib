---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  roles: ['manager']
};

await client.api('/storage/fileStorage/containers/{containerId}/permissions/{permissionId}')
	.version('beta')
	.update(permission);

```