---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
    filter: 'CloudPcId eq \'40f9315c-5b63-4126-9f89-b7dcb14fffff\' and SignInDateTime gt datetime\'2022-09-09T01:22:51.849Z\'',
    select: [
        'SignInDateTime',
        'SignOutDateTime',
        'UsageInHour',
        'RoundTripTimeInMsP50',
        'AvailableBandwidthInMbpsP50',
        'RemoteSignInTimeInSec'
    ],
    top: 25,
    skip: 0
};

await client.api('/deviceManagement/virtualEndpoint/reports/getRemoteConnectionHistoricalReports')
	.version('beta')
	.post(stream);

```