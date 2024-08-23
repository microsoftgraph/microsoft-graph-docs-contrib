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
  select: [
    'UsageInsight'
  ],
  groupBy: [
    'UsageInsight'
  ],
  filter: ''
};

await client.api('/deviceManagement/virtualEndpoint/reports/getCloudPcRecommendationReports')
	.version('beta')
	.post(stream);

```