---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let jobs = await client.api('/servicePrincipals/60443998-8cf7-4e61-b05c-a53b658cb5e1/synchronization/jobs')
	.version('beta')
	.header('Authorization','Bearer {Token}')
	.get();

```