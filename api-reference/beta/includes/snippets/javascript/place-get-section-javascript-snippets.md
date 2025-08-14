---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let place = await client.api('/places/ca163ae1-14a3-4e2a-8a97-5f82d672186f')
	.version('beta')
	.get();

```