---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workbookChart = await client.api('/me/drive/items/{id}/workbook/worksheets/{id|name}/charts/ItemAt(index=8)')
	.version('beta')
	.get();

```