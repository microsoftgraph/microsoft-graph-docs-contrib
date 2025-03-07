---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/external/industryData/outboundProvisioningFlowSets/8c33d025-5e64-4550-2aa3-08dc4ac66fca/provisioningFlows/51f99e09-bdc5-47ff-7a0a-08dc4ac74cf1/reset')
	.version('beta')
	.post();

```