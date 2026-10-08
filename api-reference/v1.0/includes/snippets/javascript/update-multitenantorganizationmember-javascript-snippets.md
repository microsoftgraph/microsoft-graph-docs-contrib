---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const multiTenantOrganizationMember = {
    role: 'owner'
};

await client.api('/tenantRelationships/multiTenantOrganization/tenants/5036a0a0-a7a4-4933-9086-5dd54535dd6e')
	.update(multiTenantOrganizationMember);

```