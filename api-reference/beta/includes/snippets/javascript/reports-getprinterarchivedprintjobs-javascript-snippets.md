---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getPrinterArchivedPrintJobs = await client.api('/reports/getPrinterArchivedPrintJobs(printerId='016b5565-3bbf-4067-b9ff-4d68167eb1a6',startDateTime=2021-05-24,endDateTime=2021-05-25)')
	.version('beta')
	.get();

```