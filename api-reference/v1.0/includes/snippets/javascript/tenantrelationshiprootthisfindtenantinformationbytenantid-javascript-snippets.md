---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tenantInformation = await client.api('/tenantRelationships/findTenantInformationByTenantId(tenantId='6babcaad-604b-40ac-a9d7-9fd97c0b779f')')
	.get();

```