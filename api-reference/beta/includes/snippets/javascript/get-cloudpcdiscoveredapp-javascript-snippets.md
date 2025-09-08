---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcCloudApp = await client.api('/deviceManagement/virtualEndpoint/cloudApps/retrieveDiscoveredApps(sourceId='30d0e128-de93-41dc-89ec-33d84bb662a0',provisionPolicyId='30d0e128-de93-41dc-89ec-33d84bb662a0')')
	.version('beta')
	.get();

```