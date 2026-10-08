---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onPremAuthenticationPolicy = {
  deletedDateTime: null,
  description: 'Updates to policy definition to manage and control authentication settings.',
  displayName: 'Update policy name',
  definition: [
    '{\"Version\':1,\'LastUpdatedTimestamp\':\'2025-02-29T22:47:12.7764932Z\", \"Key1\': \'Value1\", \"Key2\': {\'SubKey1\': \"SubValue1\"}}"
  ]
};

await client.api('/policies/onPremAuthenticationPolicies/2e68a8f2-50ce-b21d-d25d-c34b59675ee2')
	.version('beta')
	.update(onPremAuthenticationPolicy);

```