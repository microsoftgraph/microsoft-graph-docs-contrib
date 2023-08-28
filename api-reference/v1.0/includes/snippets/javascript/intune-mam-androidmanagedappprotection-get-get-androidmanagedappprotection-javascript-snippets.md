---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let androidManagedAppProtection = await client.api('/deviceAppManagement/androidManagedAppProtections/{androidManagedAppProtectionId}')
	.get();

```