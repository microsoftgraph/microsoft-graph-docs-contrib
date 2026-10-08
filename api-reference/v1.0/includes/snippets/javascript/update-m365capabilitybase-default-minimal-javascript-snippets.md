---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const m365CapabilityBase = {
  inboundAccess: {
    isAllowed: false
  }
};

await client.api('/policies/crossTenantAccessPolicy/default/m365Capabilities/crossTenantOpenProfileCard')
	.update(m365CapabilityBase);

```