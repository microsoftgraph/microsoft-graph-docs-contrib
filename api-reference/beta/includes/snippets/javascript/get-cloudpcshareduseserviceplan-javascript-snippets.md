---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcSharedUseServicePlan = await client.api('/deviceManagement/virtualEndpoint/sharedUseServicePlans/613a8d85-6c33-1268-9f55-b96a6540017c')
	.version('beta')
	.get();

```