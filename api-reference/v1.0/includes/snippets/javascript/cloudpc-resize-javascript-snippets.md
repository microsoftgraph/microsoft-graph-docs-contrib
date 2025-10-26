---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const resize = {
  targetServicePlanId: '30d0e128-de93-41dc-89ec-33d84bb662a0'
};

await client.api('/deviceManagement/virtualEndpoint/cloudPCs/b0a9cde2-e170-4dd9-97c3-ad1d3328a711/resize')
	.post(resize);

```