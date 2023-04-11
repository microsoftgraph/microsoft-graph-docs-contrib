---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let taskProcessingResults = await client.api('/identityGovernance/lifecycleWorkflows/workflows/15239232-66ed-445b-8292-2f5bbb2eb833/taskReports/443c7611-45df-48c0-bf5e-dc6068c402f0/taskProcessingResults')
	.version('beta')
	.select('id,failureReason,processingStatus,subject,task')
	.get();

```