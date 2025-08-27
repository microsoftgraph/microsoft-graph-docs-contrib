---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let place = await client.api('/places/49558ad4-6ede-46d7-8254-3ca9f90fc4e2')
	.version('beta')
	.get();

```