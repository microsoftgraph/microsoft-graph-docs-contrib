---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let taskProcessingResults = await client.api('/identityGovernance/lifecycleWorkflows/workflows/a977dbe8-0f3f-4ae6-b3a7-29e1010ac4cc/runs/33bf1a9c-2b26-49b6-996f-ca416c518341/taskProcessingResults')
	.select('id,failureReason,processingStatus,subject')
	.get();

```