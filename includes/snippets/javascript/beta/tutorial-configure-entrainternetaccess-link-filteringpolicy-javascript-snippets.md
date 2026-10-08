---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const policyLink = {
  priority: 100,
    state: 'enabled',
    '@odata.type': '#microsoft.graph.networkaccess.filteringPolicyLink',
    loggingState: 'enabled',
    policy: {
        id: 'cccccccc-2222-3333-4444-dddddddddddd',
        '@odata.type': '#microsoft.graph.networkaccess.filteringPolicy'
};

await client.api('/networkaccess/filteringProfiles/dddddddd-3333-4444-5555-eeeeeeeeeeee/policies')
	.version('beta')
	.post(policyLink);

```