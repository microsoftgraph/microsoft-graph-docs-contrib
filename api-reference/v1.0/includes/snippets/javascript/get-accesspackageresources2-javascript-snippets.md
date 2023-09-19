---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resources = await client.api('/identityGovernance/entitlementManagement/catalogs/{catalogId}/resources')
	.filter('id eq \'{resourceId}\'')
	.expand('roles,scopes')
	.get();

```