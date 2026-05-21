---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const retry = {
  '@odata.type': '#microsoft.graph.cloudPcBulkAction',
  cloudPcIds: [
    '30d0e128-de93-41dc-89ec-33d84bb662a0',
    '7c82a3e3-9459-44e4-94d9-b92f93bf78dd'
  ]
};

await client.api('/deviceManagement/virtualEndpoint/bulkActions/0d76d02b-e0a0-4f58-baff-d1718cc2d144/retry')
	.version('beta')
	.post(retry);

```