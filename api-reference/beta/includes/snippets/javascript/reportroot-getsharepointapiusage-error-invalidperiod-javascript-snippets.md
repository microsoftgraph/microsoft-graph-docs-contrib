---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let stream = await client.api('/reports/getSharePointApiUsage(period='D90')')
	.version('beta')
	.get();

```