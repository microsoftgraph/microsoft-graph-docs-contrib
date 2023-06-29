---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookFunctionResult = {
    lookupValue: 'pear',
    tableArray: {Address: 'Sheet1!B2:C7'},
    colIndexNum: 2,
    rangeLookup: false
};

await client.api('/me/drive/items/{id}/workbook/functions/vlookup')
	.post(workbookFunctionResult);

```