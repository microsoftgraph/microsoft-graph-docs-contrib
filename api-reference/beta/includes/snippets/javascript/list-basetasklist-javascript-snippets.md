---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let lists = await client.api('/me/tasks/lists')
	.version('beta')
	.get();

```