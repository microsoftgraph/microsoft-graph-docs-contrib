---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let targetedManagedAppConfigurations = await client.api('/deviceAppManagement/targetedManagedAppConfigurations')
	.get();

```