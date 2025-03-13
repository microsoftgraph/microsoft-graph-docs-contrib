---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const multiTenantOrganization = {
  displayName: 'Contoso organization',
  description: 'Multitenant organization between Contoso, Fabrikam, and Woodgrove Bank'
};

await client.api('/tenantRelationships/multiTenantOrganization')
	.update(multiTenantOrganization);

```