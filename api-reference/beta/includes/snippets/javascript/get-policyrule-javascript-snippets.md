---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let policyRule = await client.api('/networkaccess/forwardingPolicies/{forwardingPolicyId}/policyRules/{RuleId)')
	.version('beta')
	.get();

```