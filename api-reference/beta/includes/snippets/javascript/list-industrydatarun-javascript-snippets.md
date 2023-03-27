---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let runs = await client.api('/external/industryData/runs')
	.version('beta')
	.get();

```