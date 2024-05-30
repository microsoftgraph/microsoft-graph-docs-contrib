---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcFrontLineServicePlan = await client.api('/deviceManagement/virtualEndpoint/frontLineServicePlans/dd3801e2-4aa1-4b16-a44b-243e55497584')
	.version('beta')
	.get();

```