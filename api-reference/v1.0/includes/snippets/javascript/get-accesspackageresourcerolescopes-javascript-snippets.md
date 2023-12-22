---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessPackage = await client.api('/identityGovernance/entitlementManagement/accessPackages/{id}')
	.expand('resourceRoleScopes($expand=role,scope)')
	.get();

```