---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const filteringPolicy = {
  name: 'AI and Bing',
  policyRules: [
    {
      '@odata.type': '#microsoft.graph.networkaccess.webCategoryFilteringRule',
      name: 'AI',
      ruleType: 'webCategory',
      destinations: [
        {
          '@odata.type': '#microsoft.graph.networkaccess.webCategory',
          name: 'ArtificialIntelligence'
        }
      ]
    },
    {
      '@odata.type': '#microsoft.graph.networkaccess.fqdnFilteringRule',
      name: 'bing FQDNs',
      ruleType: 'fqdn',
      destinations: [
        {
          '@odata.type': '#microsoft.graph.networkaccess.fqdn',
          value: 'bing.com'
        },
        {
          '@odata.type': '#microsoft.graph.networkaccess.fqdn',
          value: '*.bing.com'
        }
      ]
    }
  ],
  action: 'block'
};

await client.api('/networkaccess/filteringPolicies')
	.version('beta')
	.post(filteringPolicy);

```