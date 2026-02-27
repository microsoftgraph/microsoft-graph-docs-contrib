---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let place = await client.api('/places/ca147fcf-ae27-43bb-9d91-f11e626e58bf')
	.version('beta')
	.get();

```