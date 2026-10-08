---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let remoteTenantGroup = await client.api('/directory/remoteTenantGroups/{remoteTenantGroupId}')
	.get();

```