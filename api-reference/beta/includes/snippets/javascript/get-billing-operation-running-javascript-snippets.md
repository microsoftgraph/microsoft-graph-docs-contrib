---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let operation = await client.api('/reports/partners/billing/operations/6fe687d7-1e0f-4bd6-9091-4672691f64bc')
	.version('beta')
	.get();

```