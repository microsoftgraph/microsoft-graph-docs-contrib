---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const previewWorkflow = {
  subjects: [
    {
      '@odata.type': '#microsoft.graph.user',
      id: 'b59552b8-fa7b-4f68-8496-0a529aace8c0'
    },
    {
      '@odata.type': '#microsoft.graph.user',
      id: 'a1b2c3d4-e5f6-7890-abcd-ef1234567890'
    }
  ]
};

await client.api('/identityGovernance/lifecycleWorkflows/workflows/14879e66-9ea9-48d0-804d-8fea672d0341/previewWorkflow')
	.version('beta')
	.post(previewWorkflow);

```