---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const moveToCatalog = {
  catalogId: '3301434b-99bd-46be-923b-d762c30c8e8b'
};

await client.api('/identityGovernance/entitlementManagement/accessPackages/3089f957-4bfe-405d-96c0-9a7ef30c01d6/moveToCatalog')
	.version('beta')
	.post(moveToCatalog);

```