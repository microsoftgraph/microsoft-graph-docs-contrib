---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let user = await client.api('/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e')
	.version('beta')
	.select('ext55gb1l09_msLearnCourses')
	.get();

```