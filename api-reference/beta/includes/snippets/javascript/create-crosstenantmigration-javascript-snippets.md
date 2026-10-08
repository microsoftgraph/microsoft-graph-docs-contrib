---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const m365CapabilityBase = {
  '@odata.type': '#microsoft.graph.crossTenantMigration',
  inboundAccess: {
    isAllowed: true,
    resourceScopes: {
      included: [
        {
          resourceId: 'ad4fc698-74dc-4f62-9e71-ba9b591e8e74',
          resourceType: 'group'
        }
      ],
      excluded: []
    }
  }
};

await client.api('/policies/crossTenantAccessPolicy/default/m365Capabilities')
	.version('beta')
	.post(m365CapabilityBase);

```