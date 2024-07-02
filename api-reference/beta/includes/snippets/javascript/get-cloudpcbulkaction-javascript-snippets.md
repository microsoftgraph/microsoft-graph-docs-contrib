---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcBulkAction = await client.api('/deviceManagement/virtualEndpoint/bulkActions/0d76d02b-e0a0-4f58-baff-d1718cc2d144')
	.version('beta')
	.get();

```