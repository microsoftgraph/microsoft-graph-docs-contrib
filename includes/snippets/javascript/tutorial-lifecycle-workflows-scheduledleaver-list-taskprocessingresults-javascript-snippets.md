---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let taskProcessingResults = await client.api('/identityGovernance/LifecycleWorkflows/workflows/15239232-66ed-445b-8292-2f5bbb2eb833/userProcessingResults/40efc576-840f-47d0-ab95-5abca800f8a2/taskProcessingResults')
	.version('beta')
	.get();

```