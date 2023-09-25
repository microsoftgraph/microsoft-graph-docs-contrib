---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authenticationStrengthUsage = await client.api('/policies/authenticationStrengthPolicies/{authenticationStrengthPolicyId}/usage')
	.version('beta')
	.get();

```