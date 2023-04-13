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
      type: 'String',
      startDateTime: 'String (timestamp)'
    }
  ]
};

await client.api('/connections/{connectionsId}/items/{externalItemId}/addActivities')
	.version('beta')
	.post(externalActivityResult);

```