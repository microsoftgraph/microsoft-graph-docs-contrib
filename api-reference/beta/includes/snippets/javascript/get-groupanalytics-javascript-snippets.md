---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let groupAnalytics = await client.api('/reports/identityAnalytics/groups/1f3a3b9c-6e2c-4f0a-9b2c-9a6d4d2e8f10')
	.version('beta')
	.get();

```