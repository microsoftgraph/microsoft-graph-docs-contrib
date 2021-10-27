---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookTableRow = {
  values: "[
    [1, 2, 3],
    [4, 5, 6]
  ]"
};

await client.api('/me/drive/items/01CCETFLK7GVZTZHSQNRD2AEI5XWTCU6FJ/workbook/tables/Table1/rows')
	.version('beta')
	.post(workbookTableRow);

```