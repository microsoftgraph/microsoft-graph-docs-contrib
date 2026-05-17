---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const stream = {
    filter: '',
    reportType: 'microsoftRemoteDesktopClientUsageReport',
    select: ['UPN', 'LastSignOn', 'DaysWithUsage'],
    search: '',
    skip: 0,
    top: 50
};

await client.api('/deviceManagement/virtualEndpoint/report/retrieveCloudPcClientAppUsageReport')
	.version('beta')
	.post(stream);

```