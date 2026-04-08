---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const b2bManagementPolicy = {
  '@odata.type': '#microsoft.graph.b2bManagementPolicy',
  description: 'Policy used for B2B features',
  displayName: 'Policy1',
  definition: [
    '{\'B2BManagementPolicy\':{\'Version\':1}}'
  ],
  isOrganizationDefault: 'true'
};

await client.api('/policies/b2bManagementPolicies/f596ef0d-42f9-0359-1aaa-12d02b38802a')
	.version('beta')
	.update(b2bManagementPolicy);

```