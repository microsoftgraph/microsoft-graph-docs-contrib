---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let taskReportSummary = await client.api('/identityGovernance/lifecycleWorkflows/workflows/14879e66-9ea9-48d0-804d-8fea672d0341/taskReports/summary(startDateTime=2022-08-19T00:00:00.000Z,endDateTime=2022-08-25T00:33:31.533Z)')
	.get();

```