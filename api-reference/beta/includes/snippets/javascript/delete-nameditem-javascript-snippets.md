---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/me/drive/items/{itemID}/workbook/names/{name}')
	.version('beta')
	.delete();

```