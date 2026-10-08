---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let placeOperation = await client.api('/places/getOperation(id='116d12e4-3361-43f9-b722-af5b510760c9')')
	.version('beta')
	.get();

```