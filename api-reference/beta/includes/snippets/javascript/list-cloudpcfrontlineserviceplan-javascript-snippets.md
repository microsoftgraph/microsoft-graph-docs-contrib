---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let frontLineServicePlans = await client.api('/deviceManagement/virtualEndpoint/frontLineServicePlans')
	.version('beta')
	.get();

```