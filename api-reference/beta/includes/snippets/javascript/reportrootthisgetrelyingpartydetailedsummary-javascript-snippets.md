---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getRelyingPartyDetailedSummary = await client.api('/reports/getRelyingPartyDetailedSummary(period='D7')')
	.version('beta')
	.get();

```