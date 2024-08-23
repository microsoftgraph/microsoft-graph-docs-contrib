---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const policyLink = {
  '@odata.type': '#microsoft.graph.networkaccess.filteringPolicyLink',
  state: 'disabled'
};

await client.api('/networkaccess/filteringProfiles/9020f79d-71f6-4650-83a9-6b532479578f/policies/d00cf227-8645-4ab8-bd99-a9b455fd83a3')
	.version('beta')
	.update(policyLink);

```