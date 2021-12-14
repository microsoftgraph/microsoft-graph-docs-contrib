---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let catalogs = await client.api('/identityGovernance/entitlementManagement/catalogs')
	.get();

```