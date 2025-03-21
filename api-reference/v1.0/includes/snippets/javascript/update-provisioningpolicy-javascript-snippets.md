---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcProvisioningPolicy = {
  '@odata.type': '#microsoft.graph.cloudPcProvisioningPolicy',
  displayName: 'HR provisioning policy',
  description: 'Provisioning policy for India HR employees',
  microsoftManagedDesktop: {
    managedType: 'starterManaged',
    profile: null
  },
  autopatch: {
    autopatchGroupId: '91197a0b-3a74-408d-ba88-bce3fdc4e5eb'
  }
};

await client.api('/deviceManagement/virtualEndpoint/provisioningPolicies/1d164206-bf41-4fd2-8424-a3192d39ffff')
	.update(cloudPcProvisioningPolicy);

```