---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userStatuses = await client.api('/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/userStatuses')
	.get();

```