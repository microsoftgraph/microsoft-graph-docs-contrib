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
  select: [
    'ServicePlanId',
    'ServicePlanName',
    'UsageInsight'
  ],
  groupBy: [
    'ServicePlanId',
    'ServicePlanName',
    'UsageInsight'
  ]
};

await client.api('/deviceManagement/virtualEndpoint/report/retrieveCloudPcRecommendationReports')
	.post(stream);

```