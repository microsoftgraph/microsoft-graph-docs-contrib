---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mobileApps = await client.api('/deviceAppManagement/mobileApps')
	.get();

```