---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let alerts = await client.api('/reports/healthMonitoring/alerts')
	.version('beta')
	.filter('createdDateTime gt 2024-06-10T11:23:44Z')
	.select('id,alertType,createdDateTime,state')
	.get();

```