---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resources = await client.api('/identityGovernance/entitlementManagement/catalogs/{catalogId}/resources')
	.filter('originId eq \'0282e19d-bf41-435d-92a4-99bab93af305\'')
	.expand('roles,scopes')
	.get();

```