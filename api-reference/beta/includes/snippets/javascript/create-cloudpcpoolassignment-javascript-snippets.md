---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcPoolAssignment = {
  '@odata.type': '#microsoft.graph.cloudPcAgentPoolUserAssignment',
  userPrincipalId: 'f6a7b8c9-d0e1-2345-f678-901234567890'
};

await client.api('/deviceManagement/virtualEndpoint/cloudPcPools/a1b2c3d4-e5f6-7890-abcd-ef1234567890/assignments')
	.version('beta')
	.post(cloudPcPoolAssignment);

```