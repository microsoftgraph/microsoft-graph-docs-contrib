---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let queries = await client.api('/security/auditLog/queries')
	.version('beta')
	.get();

```