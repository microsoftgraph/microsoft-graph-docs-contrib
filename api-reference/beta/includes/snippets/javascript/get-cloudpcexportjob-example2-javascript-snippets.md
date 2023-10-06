---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcExportJob = await client.api('/deviceManagement/virtualEndpoint/reports/exportJobs/RemoteConnectionQualityReports__85678957-6202-4e29-97e6-eb26ef07f330')
	.version('beta')
	.get();

```