---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userCount = await client.api('/reports/userInsights/daily/userCount')
	.version('beta')
	.get();

```