---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let complianceManagementPartners = await client.api('/deviceManagement/complianceManagementPartners')
	.get();

```