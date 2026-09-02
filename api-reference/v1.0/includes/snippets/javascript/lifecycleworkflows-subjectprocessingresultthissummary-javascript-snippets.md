---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let subjectSummary = await client.api('/identityGovernance/lifecycleWorkflows/workflows/14879e66-9ea9-48d0-804d-8fea672d0341/runs/40efc576-8100-46eb-92c1-73eb43bb09a4/subjectProcessingResults/summary(startDateTime=2026-05-06T00:00:00Z,endDateTime=2026-05-13T00:00:00Z)')
	.get();

```