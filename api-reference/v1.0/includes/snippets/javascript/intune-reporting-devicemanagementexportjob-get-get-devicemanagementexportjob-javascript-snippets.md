---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceManagementExportJob = await client.api('/deviceManagement/reports/exportJobs/{deviceManagementExportJobId}')
	.get();

```