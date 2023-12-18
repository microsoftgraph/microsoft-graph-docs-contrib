---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const filteringPolicy = {
    name: 'Block Social',
    policyRules: [
        {
            '@odata.type': '#microsoft.graph.networkaccess.webCategoryFilteringRule',
            name: 'Block Social',
            ruleType: 'webCategory',
            destinations: [
                {
                    '@odata.type': '#microsoft.graph.networkaccess.webCategory',
                    name: 'SocialNetworking'
                }
            ]
        }
    ],
    action: 'block',
    description: 'Block Social Sites',
    '@odata.type': '#microsoft.graph.networkaccess.filteringPolicy'
};

await client.api('/networkaccess/filteringPolicies')
	.version('beta')
	.post(filteringPolicy);

```