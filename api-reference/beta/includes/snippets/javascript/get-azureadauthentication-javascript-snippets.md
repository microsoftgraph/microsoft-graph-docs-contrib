---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let azureADAuthentication = await client.api('/reports/sla/azureADAuthentication')
	.version('beta')
	.get();

```