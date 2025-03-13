---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let records = await client.api('/security/auditLog/queries/{auditLogQueryId}/records')
	.version('beta')
	.get();

```