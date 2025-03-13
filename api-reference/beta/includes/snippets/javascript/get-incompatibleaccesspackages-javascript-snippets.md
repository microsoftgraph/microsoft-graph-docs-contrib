---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let incompatibleAccessPackages = await client.api('/identityGovernance/entitlementManagement/accessPackages/{id}/incompatibleAccessPackages')
	.version('beta')
	.get();

```