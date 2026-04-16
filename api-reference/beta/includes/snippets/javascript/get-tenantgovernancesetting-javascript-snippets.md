---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tenantGovernanceSetting = await client.api('/directory/tenantGovernance/settings')
	.version('beta')
	.get();

```