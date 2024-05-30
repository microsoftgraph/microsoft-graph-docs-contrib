---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let lifecycleManagementSettings = await client.api('/identityGovernance/lifecycleWorkflows/settings')
	.get();

```