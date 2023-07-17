---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalActivityResult = {
  activities: [
    {
      '@odata.type': '#microsoft.graph.externalConnectors.externalActivity',
      type: 'created',
      startDateTime: '2021-04-06T18:04:31.033Z',
      performedBy: {
        type: 'user',
        id: '1f0c997e-99f7-43f1-8cca-086f8d42be8d'
      }
    }
  ]
};

await client.api('/external/connections/contosohr/items/TSP228082938/addActivities')
	.version('beta')
	.post(externalActivityResult);

```