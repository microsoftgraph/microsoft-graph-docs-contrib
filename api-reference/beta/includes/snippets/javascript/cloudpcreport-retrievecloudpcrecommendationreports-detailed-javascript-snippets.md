---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
  reportType: 'cloudPcUsageCategoryReport',
  filter: '',
  select: [
    'CloudPcId',
    'ManagedDeviceName',
    'UserPrincipalName',
    'ServicePlanId',
    'ServicePlanName',
    'UsageInsight',
    'RecommendedPlanId',
    'RecommendedPlanName'
  ],
  search: '',
  skip: 0,
  top: 15
};

await client.api('/deviceManagement/virtualEndpoint/report/retrieveCloudPcRecommendationReports')
	.version('beta')
	.post(stream);

```