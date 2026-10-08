---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let summary = await client.api('/reports/userInsights/monthly/summary')
	.version('beta')
	.get();

```