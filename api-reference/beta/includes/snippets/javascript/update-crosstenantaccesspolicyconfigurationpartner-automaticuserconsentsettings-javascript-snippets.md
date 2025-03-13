---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const crossTenantAccessPolicyConfigurationPartner = {
  automaticUserConsentSettings: {
    inboundAllowed: true,
    outboundAllowed: true
  }
};

await client.api('/policies/crossTenantAccessPolicy/partners/90e29127-71ad-49c7-9ce8-db3f41ea06f1')
	.version('beta')
	.update(crossTenantAccessPolicyConfigurationPartner);

```