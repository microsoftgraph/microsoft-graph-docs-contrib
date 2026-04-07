---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let governanceInvitations = await client.api('/directory/tenantGovernance/governanceInvitations')
	.version('beta')
	.get();

```