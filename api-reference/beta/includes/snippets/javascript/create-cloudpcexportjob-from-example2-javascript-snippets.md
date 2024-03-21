---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcExportJob = {
  reportName: 'RemoteConnectionQualityReports',
  select: [
    'CloudPcId',
    'ManagedDeviceName',
    'AvgRoundTripTimeInMsP50',
    'LastConnectionRoundTripTimeInMs',
    'AvgAvailableBandwidthInMBpsP50',
    'LastConnectionAvailableBandWidthInMSps',
    'AvgRemoteSignInTimeInSecP50',
    'UDPConnectionPercentage',
    'LastConnectionGateway',
    'LastConnectionProtocol',
    'EventDateTime'
  ],
  filter: 'EventDateTime gt datetime\'2023-06-14T07:40:41.694Z\''
};

await client.api('/deviceManagement/virtualEndpoint/reports/exportJobs')
	.version('beta')
	.post(cloudPcExportJob);

```