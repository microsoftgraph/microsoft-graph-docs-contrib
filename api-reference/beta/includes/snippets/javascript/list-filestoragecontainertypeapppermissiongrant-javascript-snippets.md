---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let applicationPermissionGrants = await client.api('/storage/fileStorage/containerTypeRegistrations/21b52d99-7114-4c47-80b3-362b6a0bba3a/applicationPermissionGrants')
	.version('beta')
	.get();

```