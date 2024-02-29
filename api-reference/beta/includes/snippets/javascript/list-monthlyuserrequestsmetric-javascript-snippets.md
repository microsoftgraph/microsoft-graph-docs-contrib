---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let requests = await client.api('/reports/userInsights/monthly/requests')
	.version('beta')
	.get();

```