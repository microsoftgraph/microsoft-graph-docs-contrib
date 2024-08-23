---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let provisioningFlow = await client.api('/external/industryData/OutboundProvisioningFlowSets/9ab41255-5364-4c53-e15c-08dc4ab6ee03/provisioningFlows/4598f62a-7bd9-40a1-d38a-08dc4ac68cf2')
	.version('beta')
	.get();

```