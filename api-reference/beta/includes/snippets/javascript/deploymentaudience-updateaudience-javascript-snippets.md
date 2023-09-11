---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updateAudience = {
  addMembers: [
    {
      '@odata.type': '#microsoft.graph.windowsUpdates.azureADDevice',
      id: 'String (identifier)'
    }
  ],
};

await client.api('/admin/windows/updates/deploymentAudiences/2d477566-6976-4c2d-97eb-d2acd1c2864e/updateAudience')
	.version('beta')
	.post(updateAudience);

```