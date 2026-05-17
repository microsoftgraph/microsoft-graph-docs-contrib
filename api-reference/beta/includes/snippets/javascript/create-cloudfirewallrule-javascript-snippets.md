---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const policyRule = {
  '@odata.type': '#microsoft.graph.networkaccess.cloudFirewallRule',
  name: 'Block outbound to risky destinations',
  description: 'Block traffic to specific IPs on common ports',
  priority: 100,
  action: 'block',
  settings: {
    status: 'enabled'
  },
  matchingConditions: {
    sources: {
      addresses: [
        {
          '@odata.type': '#microsoft.graph.networkaccess.cloudFirewallSourceIpAddress',
          values: ['192.168.1.1', '192.168.0.0/16', '172.16.0.0-172.16.255.255']
        }
      ],
      ports: ['80', '443', '445-447']
    },
    destinations: {
      addresses: [
        {
          '@odata.type': '#microsoft.graph.networkaccess.cloudFirewallDestinationIpAddress',
          values: ['10.0.0.1']
        }
      ],
      ports: ['80', '443', '445-447'],
      protocols: 'tcp'
    }
  }
};

await client.api('/networkAccess/cloudFirewallPolicies/80b58b7d-572f-4457-8944-c804fcf3b694/policyRules')
	.version('beta')
	.post(policyRule);

```