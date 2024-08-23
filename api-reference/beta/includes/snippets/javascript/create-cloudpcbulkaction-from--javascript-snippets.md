---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcBulkAction = {
  '@odata.type': '#microsoft.graph.cloudPcBulkAction',
  displayName: 'Bulk Power Off by Andy',
  cloudPcIds: [
    'd6e0b8ee-8836-4b8d-b038-6130a97a3a9d',
    '85994912-197b-4927-b569-447bd81350ec'
  ],
  scheduledDuringMaintenanceWindow: true
};

await client.api('/deviceManagement/virtualEndpoint/bulkActions')
	.version('beta')
	.post(cloudPcBulkAction);

```