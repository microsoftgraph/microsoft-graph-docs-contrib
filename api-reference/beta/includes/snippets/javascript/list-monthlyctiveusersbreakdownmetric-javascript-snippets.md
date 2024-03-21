---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let activeUsersBreakdown = await client.api('/reports/userInsights/monthly/activeUsersBreakdown')
	.version('beta')
	.get();

```