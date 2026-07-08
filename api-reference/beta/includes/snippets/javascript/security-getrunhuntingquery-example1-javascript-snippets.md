---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let huntingQueryResults = await client.api('/security/getRunHuntingQuery(query='AlertInfo | project Timestamp, Title | take 2',timespan='P1D')')
	.version('beta')
	.get();

```