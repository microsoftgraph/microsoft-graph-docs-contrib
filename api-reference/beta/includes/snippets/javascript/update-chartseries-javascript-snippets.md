---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookChartSeries = {
  name: 'name-value'
};

await client.api('/me/drive/items/{id}/workbook/worksheets/{id|name}/charts/{name}/series/{series-id}')
	.version('beta')
	.update(workbookChartSeries);

```