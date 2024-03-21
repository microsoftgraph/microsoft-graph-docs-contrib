---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customSecurityAttributeAudits = await client.api('/auditLogs/customSecurityAttributeAudits')
	.version('beta')
	.top(1)
	.get();

```