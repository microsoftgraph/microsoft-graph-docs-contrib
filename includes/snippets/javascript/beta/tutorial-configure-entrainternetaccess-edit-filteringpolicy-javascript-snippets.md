---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const policyRule = {
  '@odata.type': '#microsoft.graph.networkaccess.fqdnFilteringRule',
  destinations: [
    {
      '@odata.type': '#microsoft.graph.networkaccess.fqdn',
      value: 'bing.com'
    },
    {
      '@odata.type': '#microsoft.graph.networkaccess.fqdn',
      value: '*.bing.com'
    },
    {
      '@odata.type': '#microsoft.graph.networkaccess.fqdn',
      value: 'bing.co.uk'
    }
  ]
};

await client.api('/networkaccess/filteringPolicies('cccccccc-2222-3333-4444-dddddddddddd')/policyRules('<policyRuleId>')')
	.version('beta')
	.post(policyRule);

```