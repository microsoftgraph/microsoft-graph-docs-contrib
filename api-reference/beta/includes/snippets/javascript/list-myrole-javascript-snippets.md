---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let myRoles = await client.api('/tenantRelationships/managedTenants/myRoles')
	.version('beta')
	.get();

```