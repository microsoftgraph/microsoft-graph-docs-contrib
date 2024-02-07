---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
  reportName: 'cloudPcUsageCategoryReports',
  top: 50,
  skip: 0,
  search: '',
  filter: '',
  select: [
    'CloudPcId',
    'ManagedDeviceName',
    'UserPrincipalName',
    'UsageInsight',
    'CurrentSize',
    'RecommendedSize',
    'UsageInHour',
    'DevicePerfSummary'
  ],
  orderBy: [
    'ManagedDeviceName'
  ]
};

await client.api('/deviceManagement/virtualEndpoint/reports/getCloudPcRecommendationReports')
	.version('beta')
	.post(stream);

```