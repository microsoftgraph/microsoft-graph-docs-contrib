---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookRangeFill = {
  color: '#00FF00'
};

await client.api('/me/drive/items/{id}/workbook/worksheets/Sheet1/range(address='$B$1')/format/fill')
	.update(workbookRangeFill);

```