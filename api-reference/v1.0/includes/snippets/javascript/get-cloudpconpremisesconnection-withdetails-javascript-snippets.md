---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcOnPremisesConnection = await client.api('/deviceManagement/virtualEndpoint/onPremisesConnections/{id}')
	.select('id,displayName,healthCheckStatus,healthCheckStatusDetail,inUse')
	.get();

```