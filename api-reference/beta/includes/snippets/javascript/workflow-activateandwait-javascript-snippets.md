---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const awaitedWorkflowProcessingResult = {
  subject: {
    '@odata.type': '#microsoft.graph.identityGovernance.provisioningObjectWorkflowSubject',
    id: 'b74f0fae-b1f3-4c96-9bf0-d4d8a8e37cbe',
    attributeSetEntries: [
      {
        name: 'department',
        value: 'Engineering'
      },
      {
        name: 'jobTitle',
        value: 'Software Engineer'
      }
    ]
  }
};

await client.api('/identityGovernance/lifecycleWorkflows/workflows/14879a93-6b91-4153-b7e6-5df4a7b7c5c8/activateAndWait')
	.version('beta')
	.post(awaitedWorkflowProcessingResult);

```