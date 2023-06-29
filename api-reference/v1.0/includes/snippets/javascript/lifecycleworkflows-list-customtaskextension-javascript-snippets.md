---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customTaskExtensions = await client.api('/identityGovernance/lifecycleWorkflows/customTaskExtensions')
	.get();

```