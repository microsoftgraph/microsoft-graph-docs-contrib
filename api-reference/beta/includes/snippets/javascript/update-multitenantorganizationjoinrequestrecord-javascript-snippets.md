---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const multiTenantOrganizationJoinRequestRecord = {
    addedByTenantId: '1fd6544e-e994-4de2-9f1b-787b51c7d325'
};

await client.api('/tenantRelationships/multiTenantOrganization/joinRequest')
	.version('beta')
	.update(multiTenantOrganizationJoinRequestRecord);

```