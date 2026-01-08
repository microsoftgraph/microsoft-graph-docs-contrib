---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getSummarizedNonInteractiveSignIns = await client.api('/auditLogs/getSummarizedNonInteractiveSignIns(aggregationWindow='d1')')
	.version('beta')
	.get();

```