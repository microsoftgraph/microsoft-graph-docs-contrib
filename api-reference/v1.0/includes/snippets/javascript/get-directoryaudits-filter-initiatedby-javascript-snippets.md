---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let directoryAudits = await client.api('/auditLogs/directoryAudits')
	.filter('initiatedBy/user/id eq \'00000000-0000-0000-0000-000000000000\'')
	.get();

```