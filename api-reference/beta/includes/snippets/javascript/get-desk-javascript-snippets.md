---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let place = await client.api('/places/df7dd4ef-04c4-41dd-816e-35475f4dd546')
	.version('beta')
	.get();

```