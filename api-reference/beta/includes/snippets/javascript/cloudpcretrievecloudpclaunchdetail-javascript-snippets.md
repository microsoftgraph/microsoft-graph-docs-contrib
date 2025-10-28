---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcLaunchDetail = await client.api('/me/cloudPCs/a20d556d-85f7-88cc-bb9c-08d9902bb7bb/retrieveCloudPcLaunchDetail')
	.version('beta')
	.get();

```