---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleAssignments = await client.api('/roleManagement/entitlementManagement/roleAssignments')
	.filter('appScopeId eq \'/AccessPackageCatalog/4cee616b-fdf9-4890-9d10-955e0ccb12bc\'')
	.expand('principal')
	.get();

```