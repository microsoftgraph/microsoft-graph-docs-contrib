---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userSummary = await client.api('/identityGovernance/LifecycleWorkflows/workflows/ea71190c-075a-4ae7-9bca-34abf3b7b056/userProcessingResults/summary(startDateTime=2022-10-01T00:00:00Z,endDateTime=2022-10-30T00:00:00Z)')
	.version('beta')
	.get();

```