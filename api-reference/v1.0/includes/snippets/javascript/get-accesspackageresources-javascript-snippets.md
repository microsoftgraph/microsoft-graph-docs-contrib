---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resources = await client.api('/identityGovernance/entitlementManagement/catalogs/{id}/resources')
	.expand('scopes')
	.get();

```