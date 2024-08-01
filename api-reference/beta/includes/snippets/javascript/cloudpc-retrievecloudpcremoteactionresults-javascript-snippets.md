---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let retrieveCloudPcRemoteActionResults = await client.api('/deviceManagement/virtualEndpoint/cloudPCs/46ed3acc-70f8-4978-a5ba-62945ecc5e4c/retrieveCloudPcRemoteActionResults')
	.version('beta')
	.get();

```