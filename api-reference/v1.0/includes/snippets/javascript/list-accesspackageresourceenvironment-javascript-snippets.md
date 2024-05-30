---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resourceEnvironments = await client.api('/identityGovernance/entitlementManagement/resourceEnvironments')
	.filter('originSystem eq \'SharePointOnline\'')
	.get();

```