---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let frontlineCloudPcAccessState = await client.api('/deviceManagement/virtualEndpoint/cloudPCs/b0a9cde2-e170-4dd9-97c3-ad1d3328a711/getFrontlineCloudPcAccessState')
	.version('beta')
	.get();

```