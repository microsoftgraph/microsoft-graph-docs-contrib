---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let detectedApps = await client.api('/deviceManagement/detectedApps')
	.get();

```