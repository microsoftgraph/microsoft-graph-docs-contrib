---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let telecomExpenseManagementPartner = await client.api('/deviceManagement/telecomExpenseManagementPartners/{telecomExpenseManagementPartnerId}')
	.get();

```