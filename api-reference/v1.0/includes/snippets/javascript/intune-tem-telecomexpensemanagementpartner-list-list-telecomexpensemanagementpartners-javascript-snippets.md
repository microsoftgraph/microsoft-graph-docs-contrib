---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let telecomExpenseManagementPartners = await client.api('/deviceManagement/telecomExpenseManagementPartners')
	.get();

```