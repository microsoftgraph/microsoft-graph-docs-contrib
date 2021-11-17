---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignments = await client.api('/education/classes/{id}/assignments')
	.version('beta')
	.expand('resources')
	.get();

```