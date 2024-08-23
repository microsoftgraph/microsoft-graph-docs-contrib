---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const huntingQueryResults = {
    Query: 'DeviceProcessEvents',
    Timespan: 'P90D'
};

await client.api('/security/runHuntingQuery')
	.version('beta')
	.post(huntingQueryResults);

```