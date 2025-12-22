---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let signInEventsSummary = await client.api('/auditLogs/signInEventsSummary')
	.version('beta')
	.get();

```