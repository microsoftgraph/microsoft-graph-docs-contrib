---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let multiTenantOrganizationJoinRequestRecord = await client.api('/tenantRelationships/multiTenantOrganization/joinRequest')
	.get();

```