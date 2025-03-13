---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updatePolicyRules = {
  rules: [
    {
      ruleId: 'e296c914-768c-4ce9-a279-e4b6145a8a4b',
      action: 'forward'
    }
  ]
};

await client.api('/networkAccess/forwardingPolicies/{id}/updatePolicyRules')
	.version('beta')
	.post(updatePolicyRules);

```