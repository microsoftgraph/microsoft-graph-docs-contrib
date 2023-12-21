---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managedAppRegistrations = await client.api('/deviceAppManagement/managedAppRegistrations')
	.get();

```