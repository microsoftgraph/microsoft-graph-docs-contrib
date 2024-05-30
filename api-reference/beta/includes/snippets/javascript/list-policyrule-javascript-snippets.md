---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let policyRules = await client.api('/networkaccess/forwardingPolicies/{forwardingPolicyId}/policyRules')
	.version('beta')
	.get();

```