---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let supportedRegions = await client.api('/deviceManagement/virtualEndpoint/supportedRegions')
	.version('beta')
	.get();

```