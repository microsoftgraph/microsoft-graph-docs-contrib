---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let driveItemVersion = await client.api('/me/drive/items/{item-id}/versions/current')
	.get();

```