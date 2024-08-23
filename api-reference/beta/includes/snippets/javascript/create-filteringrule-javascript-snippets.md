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
    name: 'Block Alcohol',
    ruleType: 'webCategory',
    destinations: [
        {
            '@odata.type': '#microsoft.graph.networkaccess.webCategory',
            name: 'AlcoholAndTobacco'
        }
    ]
};

await client.api('/networkaccess/filteringPolicies/ac253559-37a0-4f72-b666-103420b94e38/policyRules')
	.version('beta')
	.post(policyRule);

```