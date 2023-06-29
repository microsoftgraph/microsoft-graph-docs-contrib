---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let apps = await client.api('/deviceAppManagement/iosManagedAppProtections/{iosManagedAppProtectionId}/apps')
	.get();

```