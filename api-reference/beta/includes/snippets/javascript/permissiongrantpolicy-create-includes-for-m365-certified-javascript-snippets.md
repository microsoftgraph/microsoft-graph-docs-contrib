---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permissionGrantConditionSet = {
  permissionType: 'delegated',
  certifiedClientApplicationsOnly: true
};

await client.api('/policies/permissionGrantPolicies/{id}/includes')
	.version('beta')
	.post(permissionGrantConditionSet);

```