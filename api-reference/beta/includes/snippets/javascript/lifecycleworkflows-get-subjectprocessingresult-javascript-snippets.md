---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let subjectProcessingResult = await client.api('/identityGovernance/lifecycleWorkflows/workflows/14879a93-6b91-4153-b7e6-5df4a7b7c5c8/runs/e831ffea-4156-482a-b431-e26f94d0a3dc/subjectProcessingResults/6c6d9550-4adc-117f-b307-ee188d511d67')
	.version('beta')
	.get();

```