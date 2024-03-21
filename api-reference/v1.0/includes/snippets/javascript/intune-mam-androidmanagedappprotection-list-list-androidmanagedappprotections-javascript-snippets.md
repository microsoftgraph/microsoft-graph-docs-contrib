---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let androidManagedAppProtections = await client.api('/deviceAppManagement/androidManagedAppProtections')
	.get();

```