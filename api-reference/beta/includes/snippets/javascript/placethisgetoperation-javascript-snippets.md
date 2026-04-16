---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let placeOperation = await client.api('/places/getOperation(id='0f5d3cc5-d1bd-4cba-9b0e-e9ad68527ab5')')
	.version('beta')
	.get();

```