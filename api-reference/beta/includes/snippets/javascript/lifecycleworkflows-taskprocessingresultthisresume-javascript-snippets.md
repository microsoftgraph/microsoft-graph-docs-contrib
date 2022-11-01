---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const resume = {
  data: {
    operationStatus: 'Completed'
  },
  source: 'sample',
  type: 'lifecycleEvent'
};

await client.api('/identityGovernance/lifecycleWorkflows/workflows/4f36da05-5df8-457d-adb3-b132e7b59571/tasks/e07dcdb2-0a77-4ee3-8645-3801fbe1cf9f/taskProcessingResults/6e1ec336-8d06-4386-a377-79dbab1a2eb6/resume')
	.version('beta')
	.post(resume);

```