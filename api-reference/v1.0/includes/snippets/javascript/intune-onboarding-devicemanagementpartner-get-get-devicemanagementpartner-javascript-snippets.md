---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceManagementPartner = await client.api('/deviceManagement/deviceManagementPartners/{deviceManagementPartnerId}')
	.get();

```