---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const policyRule = {
  '@odata.type': '#microsoft.graph.networkaccess.webCategoryFilteringRule',
  name: 'Gambling and Storage cateogries',
  destinations: [
    {
      '@odata.type': '#microsoft.graph.networkaccess.webCategory',
      name: 'Gambling'
    },
    {
      '@odata.type': '#microsoft.graph.networkaccess.webCategory',
      name: 'WebRepositoryAndStorage'
    }
  ]
};

await client.api('/networkaccess/filteringPolicies/bb1d249e-0691-477c-aae4-adfca179746a/policyRules/4619a550-7466-41ac-bdd9-b118bb6e004a')
	.version('beta')
	.update(policyRule);

```