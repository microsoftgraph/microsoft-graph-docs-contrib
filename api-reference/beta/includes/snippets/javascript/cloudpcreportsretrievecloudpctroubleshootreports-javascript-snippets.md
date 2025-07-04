---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
  reportName: 'troubleshootDetailsReport',
  select: [
    'CloudPcId',
    'ManagedDeviceName',
    'UserPrincipalName',
    'UsageInsight',
    'CurrentSize',
    'CurrentCPU',
    'CurrentRamInGB',
    'CurrentDiskInGB',
    'RecommendedSize',
    'RecommendedCPU',
    'RecommendedRamInGB',
    'RecommendedDiskInGB',
    'ProvisionPolicyName',
    'RoundTripTimeInMsAvg',
    'AvailableBandwidthInMbpsAvg'
  ],
  search: '',
  skip: 0,
  top: 50
};

await client.api('/deviceManagement/virtualEndpoint/reports/retrieveCloudPcTroubleshootReports')
	.version('beta')
	.post(stream);

```