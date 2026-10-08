---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getSummarizedMSISignIns = await client.api('/auditLogs/getSummarizedMSISignIns(aggregationWindow='d1')')
	.version('beta')
	.get();

```