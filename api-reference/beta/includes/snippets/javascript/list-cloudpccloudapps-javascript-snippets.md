---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudApps = await client.api('/deviceManagement/virtualEndpoint/cloudApps')
	.version('beta')
	.get();

```