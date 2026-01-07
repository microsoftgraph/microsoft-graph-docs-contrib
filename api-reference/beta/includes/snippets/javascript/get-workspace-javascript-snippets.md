---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let place = await client.api('/places/ec10ce32-2065-40ba-aa2f-ecd5ea175420')
	.version('beta')
	.get();

```