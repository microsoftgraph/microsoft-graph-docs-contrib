---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookChartAxis = {
  majorUnit: {
  },
  maximum: {
  },
  minimum: {
  }
};

await client.api('/me/drive/items/{id}/workbook/worksheets/{id|name}/charts/{name}/axes/valueAxis')
	.version('beta')
	.update(workbookChartAxis);

```