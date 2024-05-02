---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let multiTenantOrganizationMember = await client.api('/tenantRelationships/multiTenantOrganization/tenants/1fd6544e-e994-4de2-9f1b-787b51c7d325')
	.get();

```