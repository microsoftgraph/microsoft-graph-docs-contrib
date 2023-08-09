---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sharedUseServicePlans = await client.api('/deviceManagement/virtualEndpoint/sharedUseServicePlans')
	.version('beta')
	.get();

```