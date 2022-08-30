---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcBulkAction = await client.api('/deviceManagement/virtualEndpoint/bulkActions/231ad98f-41b3-872b-dd37-c70bf22cbdac')
	.version('beta')
	.get();

```