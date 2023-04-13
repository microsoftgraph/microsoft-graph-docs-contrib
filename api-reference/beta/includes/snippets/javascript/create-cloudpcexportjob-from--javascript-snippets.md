---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcExportJob = {
  reportName: 'TotalAggregatedRemoteConnectionReports',
  select: [
      'CloudPcId',
      'ManagedDeviceName',
      'UserPrincipalName',
      'DaysSinceLastSignIn',
      'TotalUsageInHour'
  ]
};

await client.api('/deviceManagement/virtualEndpoint/reports/exportJobs')
	.version('beta')
	.post(cloudPcExportJob);

```