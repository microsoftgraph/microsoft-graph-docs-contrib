---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let stream = await client.api('/reports/getSharePointApiUsage(date=2026-02-01)')
	.version('beta')
	.get();

```