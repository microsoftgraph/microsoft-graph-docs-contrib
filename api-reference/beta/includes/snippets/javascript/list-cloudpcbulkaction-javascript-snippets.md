---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let bulkActions = await client.api('/deviceManagement/virtualEndpoint/bulkActions')
	.version('beta')
	.get();

```