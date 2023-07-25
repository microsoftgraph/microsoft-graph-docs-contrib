---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceStatuses = await client.api('/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/deviceStatuses')
	.get();

```