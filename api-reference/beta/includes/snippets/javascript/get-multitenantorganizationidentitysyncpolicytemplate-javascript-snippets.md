---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let multiTenantOrganizationIdentitySyncPolicyTemplate = await client.api('/policies/crossTenantAccessPolicy/templates/multiTenantOrganizationIdentitySynchronization')
	.version('beta')
	.get();

```