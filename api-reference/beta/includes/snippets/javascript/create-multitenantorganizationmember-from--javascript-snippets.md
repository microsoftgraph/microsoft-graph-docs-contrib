---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const multiTenantOrganizationMember = {
  tenantId: '4a12efe6-aa14-4d03-8dff-88fc89e2e2ad',
  displayName: 'Fabrikam'
};

await client.api('/tenantRelationships/multiTenantOrganization/tenants')
	.version('beta')
	.post(multiTenantOrganizationMember);

```