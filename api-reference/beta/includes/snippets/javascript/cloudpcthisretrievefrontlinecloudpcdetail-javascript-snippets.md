---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let frontlineCloudPcDetail = await client.api('/deviceManagement/virtualEndpoint/cloudPCs/88019b18-57ae-4973-98c4-3cd728323887/retrieveFrontlineCloudPcDetail')
	.version('beta')
	.get();

```