---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getProvisionedCloudPCs = await client.api('/deviceManagement/virtualEndpoint/cloudPCs/getProvisionedCloudPCs(groupId='30d0e128-de93-41dc-89ec-33d84bb662a0',servicePlanId='9ecf691d-8b82-46cb-b254-cd061b2c02fb')')
	.version('beta')
	.get();

```