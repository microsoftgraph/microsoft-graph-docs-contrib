---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
  reportName: 'performanceTrendReport',
  filter: 'EventDateTime gt datetime\'2023-10-13T00:00:00.000Z\'',
  select: [
    'EventDateTime',
    'SlowRoundTripTimeCloudPcCount',
    'LowUdpConnectionPercentageCount',
    'NoActiveTimeConnectedCount',
    'LowActiveTimeConnectedCount'
  ],
  search: '',
  skip: 0,
  top: 50
};

await client.api('/deviceManagement/virtualEndpoint/reports/getCloudPcPerformanceReport')
	.version('beta')
	.post(stream);

```