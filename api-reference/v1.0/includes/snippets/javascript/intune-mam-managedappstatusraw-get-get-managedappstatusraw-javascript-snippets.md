---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managedAppStatus = await client.api('/deviceAppManagement/managedAppStatuses/{managedAppStatusId}')
	.get();

```