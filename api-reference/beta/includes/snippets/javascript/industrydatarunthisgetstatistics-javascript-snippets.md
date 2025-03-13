---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let industryDataRunStatistics = await client.api('/external/industryData/runs/918d4a8f-599b-4f6a-b409-e892855db534/getStatistics')
	.version('beta')
	.get();

```