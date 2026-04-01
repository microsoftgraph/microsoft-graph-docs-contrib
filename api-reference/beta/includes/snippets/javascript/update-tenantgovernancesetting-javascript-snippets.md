---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tenantGovernanceSetting = {
  canReceiveInvitations: true
};

await client.api('/directory/tenantGovernance/settings')
	.version('beta')
	.update(tenantGovernanceSetting);

```