---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let stream = await client.api('/reports/getSharePointApiUsage(period='D7',appId='75b613ff-af8b-48bb-b872-e06048ccf8ea')')
	.version('beta')
	.get();

```