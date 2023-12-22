---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getManagedAppDiagnosticStatuses = await client.api('/users/{usersId}/getManagedAppDiagnosticStatuses')
	.get();

```