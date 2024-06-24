---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let policyRule = await client.api('/networkaccess/filteringPolicies/ac253559-37a0-4f72-b666-103420b94e38/policyRules/0823cb1e-644b-4585-80db-1c1055894ec7')
	.version('beta')
	.get();

```