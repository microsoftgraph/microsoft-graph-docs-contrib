---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const alert = {
  state: 'resolved'
};

await client.api('/reports/healthMonitoring/alerts/{alertId}')
	.version('beta')
	.update(alert);

```