---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let snapshots = await client.api('/deviceManagement/virtualEndpoint/snapshots')
	.version('beta')
	.get();

```