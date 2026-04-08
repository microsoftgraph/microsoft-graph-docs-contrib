---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudFirewallPolicy = {
  '@odata.type': '#microsoft.graph.networkaccess.cloudFirewallPolicy',
  name: 'Block unauthorized egress',
  description: 'Policy to block unauthorized outbound connections',
  settings: {
    defaultAction: 'allow'
  }
};

await client.api('/networkAccess/cloudFirewallPolicies')
	.version('beta')
	.post(cloudFirewallPolicy);

```