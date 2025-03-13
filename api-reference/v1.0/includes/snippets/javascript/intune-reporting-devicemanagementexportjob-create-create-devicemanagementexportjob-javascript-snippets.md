---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceManagementExportJob = {
  '@odata.type': '#microsoft.graph.deviceManagementExportJob',
  reportName: 'Report Name value',
  filter: 'Filter value',
  select: [
    'Select value'
  ],
  format: 'pdf',
  snapshotId: 'Snapshot Id value',
  localizationType: 'replaceLocalizableValues',
  status: 'notStarted',
  url: 'Url value',
  requestDateTime: '2017-01-01T00:03:07.1589002-08:00',
  expirationDateTime: '2016-12-31T23:57:57.2481234-08:00'
};

await client.api('/deviceManagement/reports/exportJobs')
	.post(deviceManagementExportJob);

```