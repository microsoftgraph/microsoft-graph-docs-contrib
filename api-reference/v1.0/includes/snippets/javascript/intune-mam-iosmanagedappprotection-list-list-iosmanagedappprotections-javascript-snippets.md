---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let iosManagedAppProtections = await client.api('/deviceAppManagement/iosManagedAppProtections')
	.get();

```