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
    isAllowed: false,
    resourceScopes: {
      included: [
        {
          resourceId: 'ad4fc698-74dc-4f62-9e71-ba9b591e8e74',
          resourceType: 'group'
        },
        {
          resourceId: '070061d7-a98e-43d3-b708-0758d3738ac7',
          resourceType: 'group'
        }
      ],
      excluded: []
    }
  }
};

await client.api('/policies/crossTenantAccessPolicy/partners/e8c338c6-d070-466e-a3d5-ca735b9261b4/m365Capabilities/crossTenantOpenProfileCard')
	.update(m365CapabilityBase);

```