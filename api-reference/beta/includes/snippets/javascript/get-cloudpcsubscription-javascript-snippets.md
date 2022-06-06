---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getSubscriptions = await client.api('/deviceManagement/virtualEndpoint/snapshots/getSubscriptions')
	.version('beta')
	.get();

```