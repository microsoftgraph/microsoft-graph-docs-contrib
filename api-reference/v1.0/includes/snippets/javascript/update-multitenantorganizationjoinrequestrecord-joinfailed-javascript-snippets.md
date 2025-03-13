---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const multiTenantOrganizationJoinRequestRecord = {
    addedByTenantId: '00000000-0000-0000-0000-000000000000'
};

await client.api('/tenantRelationships/multiTenantOrganization/joinRequest')
	.update(multiTenantOrganizationJoinRequestRecord);

```