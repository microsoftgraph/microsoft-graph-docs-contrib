---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let auditLogQuery = await client.api('/security/auditLog/queries/{auditLogQueryId}')
	.version('beta')
	.get();

```