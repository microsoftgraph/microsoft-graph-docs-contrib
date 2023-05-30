---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tenantAppManagementPolicy = await client.api('/policies/defaultAppManagementPolicy')
	.get();

```