---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const appLogCollectionRequest = {
  '@odata.type': '#microsoft.graph.appLogCollectionRequest',
  status: 'completed',
  errorMessage: 'Error Message value',
  customLogFolders: [
    'Custom Log Folders value'
  ],
  completedDateTime: '2016-12-31T23:58:52.3534526-08:00'
};

await client.api('/deviceManagement/mobileAppTroubleshootingEvents/{mobileAppTroubleshootingEventId}/appLogCollectionRequests/{appLogCollectionRequestId}')
	.update(appLogCollectionRequest);

```