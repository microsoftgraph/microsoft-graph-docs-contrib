---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackage = {
  catalogId: 'cec5d6ab-c75d-47c0-9c1c-92e89f66e384',
  displayName: 'Marketing Campaign',
  description: 'Access to resources for the campaign'
};

await client.api('/identityGovernance/entitlementManagement/accessPackages')
	.version('beta')
	.post(accessPackage);

```