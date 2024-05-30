---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
    filter: 'ActivityId eq \'cb6ad4c4-8a17-4245-a644-e4436b1ee204\'',
    select: ['RoundTripTimeInMs', 'AvailableBandwidthInMBps', 'SignInDateTime'],
    skip: 0,
    top: 50
};

await client.api('/deviceManagement/virtualEndpoint/reports/getRawRemoteConnectionReports')
	.version('beta')
	.post(stream);

```