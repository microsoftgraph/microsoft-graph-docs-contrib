---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let complianceManagementPartner = await client.api('/deviceManagement/complianceManagementPartners/{complianceManagementPartnerId}')
	.get();

```