---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/users/43fe5b38-7328-40b9-a2f6-85d86ae8c34d/cloudLicensing/assignments/reprocessAssignments')
	.version('beta')
	.post();

```