---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let multiTenantOrganizationPartnerConfigurationTemplate = await client.api('/policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration')
	.version('beta')
	.get();

```