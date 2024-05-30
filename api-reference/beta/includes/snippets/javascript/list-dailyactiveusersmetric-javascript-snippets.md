---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let activeUsers = await client.api('/reports/userInsights/daily/activeUsers')
	.version('beta')
	.get();

```