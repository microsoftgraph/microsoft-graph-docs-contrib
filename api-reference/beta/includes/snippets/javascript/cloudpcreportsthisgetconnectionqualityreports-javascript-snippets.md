---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
  filter: 'EventDateTime gt datetime\'2023-04-16T07:40:41.694Z\'',
  search: '',
  select: [
    'CloudPcId',
    'ManagedDeviceName',
    'AvgRoundTripTimeInMsP50',
    'LastConnectionRoundTripTimeInMs',
    'AvgAvailableBandwidthInMbpsP50',
    'LastConnectionAvailableBandWidthInMSps',
    'AvgRemoteSignInTimeInSecP50',
    'UDPConnectionPercentage',
    'LastConnectionGateway',
    'LastConnectionProtocol',
    'LastActiveTime'
  ],
  skip: '0',
  top: '25',
  orderBy: []
};

await client.api('/deviceManagement/virtualEndpoint/reports/getConnectionQualityReports')
	.version('beta')
	.post(stream);

```