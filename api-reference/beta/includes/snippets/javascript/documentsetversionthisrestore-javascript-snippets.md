---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/sites/root/lists/Documents/items/2/documentSetVersions/1/restore')
	.version('beta')
	.post();

```