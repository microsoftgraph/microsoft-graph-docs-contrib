---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudFirewallPolicy = {
  description: 'Updated policy description'
};

await client.api('/networkAccess/cloudFirewallPolicies/80b58b7d-572f-4457-8944-c804fcf3b694')
	.version('beta')
	.update(cloudFirewallPolicy);

```