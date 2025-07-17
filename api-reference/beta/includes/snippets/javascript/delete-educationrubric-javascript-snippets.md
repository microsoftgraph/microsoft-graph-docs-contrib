---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/education/me/rubrics/767f2532-1fdd-41a5-85de-1f641e7bb9fc')
	.version('beta')
	.delete();

```