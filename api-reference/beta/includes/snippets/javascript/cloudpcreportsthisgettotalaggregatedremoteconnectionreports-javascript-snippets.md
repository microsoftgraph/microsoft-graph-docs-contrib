---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
    top: 25,
    skip: 0,
    filter: '(TotalUsageInHour ge 40 and TotalUsageInHour le 80)',
    select: [
        'CloudPcId',
        'ManagedDeviceName',
        'UserPrincipalName',
        'TotalUsageInHour',
        'DaysSinceLastSignIn'
    ]
};

await client.api('/deviceManagement/virtualEndpoint/reports/getTotalAggregatedRemoteConnectionReports')
	.version('beta')
	.post(stream);

```