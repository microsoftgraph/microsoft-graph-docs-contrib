---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const huntingQueryResults = {
    query: 'DeviceProcessEvents | where InitiatingProcessFileName =~ \"powershell.exe\" | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc | limit 2',
    timespan: 'P1D',
    workspaceId: '00000000-0000-0000-0000-000000000001'
};

await client.api('/security/runHuntingQuery')
	.version('beta')
	.post(huntingQueryResults);

```