---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let configurationSnapshotJob = await client.api('/admin/configurationManagement/configurationSnapshotJobs/c91a1470-acc9-4585-bc03-522ae898f82f')
	.get();

```