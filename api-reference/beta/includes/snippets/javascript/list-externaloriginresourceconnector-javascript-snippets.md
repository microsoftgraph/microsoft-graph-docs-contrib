---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let externalOriginResourceConnectors = await client.api('/identityGovernance/entitlementManagement/externalOriginResourceConnectors')
	.version('beta')
	.get();

```