---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let documentSetVersions = await client.api('/sites/root/lists/Documents/items/1/documentSetVersions')
	.version('beta')
	.get();

```