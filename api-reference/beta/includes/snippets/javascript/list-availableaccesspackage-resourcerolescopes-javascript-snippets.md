---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resourceRoleScopes = await client.api('/identityGovernance/entitlementManagement/availableAccessPackages/360fa7de-90be-48dc-a2ce-fc40094a93dd/resourceRoleScopes')
	.version('beta')
	.get();

```