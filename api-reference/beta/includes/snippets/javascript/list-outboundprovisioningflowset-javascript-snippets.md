---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let outboundProvisioningFlowSets = await client.api('/external/industryData/outboundProvisioningFlowSets')
	.version('beta')
	.get();

```