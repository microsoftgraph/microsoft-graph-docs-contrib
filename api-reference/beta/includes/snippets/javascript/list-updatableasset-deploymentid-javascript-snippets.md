---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/admin/windows/updates/deploymentAudiences/be0538f6-91d8-4b4a-8dbc-d6f9b70da20b/members')
	.version('beta')
	.get();

```