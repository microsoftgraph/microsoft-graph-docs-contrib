---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getSummarizedServicePrincipalSignIns = await client.api('/auditLogs/getSummarizedServicePrincipalSignIns(aggregationWindow='d1')')
	.version('beta')
	.get();

```