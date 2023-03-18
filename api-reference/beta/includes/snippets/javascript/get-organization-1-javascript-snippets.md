---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let organization = await client.api('/organization/84841066-274d-4ec0-a5c1-276be684bdd3')
	.version('beta')
	.get();

```