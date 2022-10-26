---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcProvisioningPolicy = await client.api('/deviceManagement/virtualEndpoint/provisioningPolicies/60b94f83-3e22-430e-a69d-440f65b922d6')
	.version('beta')
	.select('id,description,displayName,domainJoinConfiguration,imageDisplayName,imageId,imageType,onPremisesConnectionId,windowsSettings,managedBy,cloudPcGroupDisplayName,gracePeriodInHours,localAdminEnabled,alternateResourceUrl')
	.get();

```