---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let controlConfiguration = await client.api('/identityGovernance/entitlementManagement/controlConfigurations/endUserSettings')
	.version('beta')
	.get();

```