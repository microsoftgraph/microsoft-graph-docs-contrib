---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let auditActivityTypes = await client.api('/auditLogs/auditActivityTypes')
	.version('beta')
	.get();

```