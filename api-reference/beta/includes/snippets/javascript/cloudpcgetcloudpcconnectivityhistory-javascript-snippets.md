---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getCloudPcConnectivityHistory = await client.api('/deviceManagement/virtualEndpoint/cloudPCs/{id}/getCloudPcConnectivityHistory')
	.version('beta')
	.get();

```