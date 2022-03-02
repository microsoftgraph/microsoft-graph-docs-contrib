---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcProvisioningPolicy = {
  displayName: 'HR provisioning policy',
  description: 'Provisioning policy for India HR employees',
  onPremisesConnectionId: '4e47d0f6-6f77-44f0-8893-c0fe1701b553'
};

await client.api('/deviceManagement/virtualEndpoint/provisioningPolicies/{id}')
	.version('beta')
	.update(cloudPcProvisioningPolicy);

```