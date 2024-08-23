---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resources = await client.api('/identityGovernance/entitlementManagement/catalogs/cec5d6ab-c75d-47c0-9c1c-92e89f66e384/resources')
	.filter('originId eq \'e93e24d1-2b65-4a6c-a1dd-654a12225487\'')
	.get();

```