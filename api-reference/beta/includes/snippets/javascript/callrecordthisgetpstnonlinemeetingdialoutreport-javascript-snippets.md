---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getPstnOnlineMeetingDialoutReport = await client.api('/communications/callRecords/getPstnOnlineMeetingDialoutReport(fromDateTime=2022-11-01,toDateTime=2022-12-01)')
	.version('beta')
	.get();

```