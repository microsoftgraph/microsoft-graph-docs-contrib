---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tasks = await client.api('/drive/root/workbook/worksheets/7927C77C-AF4A-4CF9-9F4D-73FE887E89EC/tasks')
	.version('beta')
	.get();

```