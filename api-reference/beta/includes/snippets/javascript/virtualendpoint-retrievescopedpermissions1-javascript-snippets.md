---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let retrieveScopedPermissions = await client.api('/deviceManagement/virtualEndpoint/retrieveScopedPermissions')
	.version('beta')
	.get();

```