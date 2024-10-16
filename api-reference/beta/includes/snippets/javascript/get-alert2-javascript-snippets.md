---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let alert = await client.api('/reports/healthMonitoring/alerts/{id}')
	.version('beta')
	.select('alertType,state,createdDateTime,signals')
	.get();

```