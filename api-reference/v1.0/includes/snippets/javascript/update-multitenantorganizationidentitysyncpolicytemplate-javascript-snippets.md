---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const multiTenantOrganizationIdentitySyncPolicyTemplate = {
    templateApplicationLevel: 'newPartners,existingPartners',
    userSyncInbound: {
        isSyncAllowed: true
    }
};

await client.api('/policies/crossTenantAccessPolicy/templates/multiTenantOrganizationIdentitySynchronization')
	.update(multiTenantOrganizationIdentitySyncPolicyTemplate);

```