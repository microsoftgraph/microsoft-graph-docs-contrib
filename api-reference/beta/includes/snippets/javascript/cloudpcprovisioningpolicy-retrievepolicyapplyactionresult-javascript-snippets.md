---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcPolicyApplyActionResult = await client.api('/deviceManagement/virtualEndpoint/provisioningPolicies/b0c2d35f-3385-46c8-a6f5-6c3dfad7708b/retrievePolicyApplyActionResult')
	.version('beta')
	.get();

```