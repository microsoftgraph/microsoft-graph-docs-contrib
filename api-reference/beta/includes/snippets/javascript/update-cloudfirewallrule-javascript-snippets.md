---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const policyRule = {
  description: 'Updated rule description',
  priority: 200
};

await client.api('/networkAccess/cloudFirewallPolicies/80b58b7d-572f-4457-8944-c804fcf3b694/policyRules/406ebb24-e229-4011-8240-e11bbaa4f49d')
	.version('beta')
	.update(policyRule);

```