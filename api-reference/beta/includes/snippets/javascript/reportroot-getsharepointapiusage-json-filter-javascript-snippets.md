---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let stream = await client.api('/reports/getSharePointApiUsage(period='D7',appId='00000003-0000-0ff1-ce00-000000000000')')
	.version('beta')
	.get();

```