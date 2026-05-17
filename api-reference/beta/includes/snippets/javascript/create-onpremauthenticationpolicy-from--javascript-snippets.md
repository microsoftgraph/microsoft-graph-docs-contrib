---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onPremAuthenticationPolicy = {
  description: 'Policy definition to manage and control authentication settings.',
  displayName: 'Policy name',
  definition: [
    '{\"Version\':1,\'LastUpdatedTimestamp\':\'2025-02-29T22:47:12.7764932Z\", \"Key1\': \'Value1\", \"Key2\': {\'SubKey1\': \"SubValue1\"}}"
  ],
  isOrganizationDefault: true
};

await client.api('/policies/onPremAuthenticationPolicies')
	.version('beta')
	.post(onPremAuthenticationPolicy);

```