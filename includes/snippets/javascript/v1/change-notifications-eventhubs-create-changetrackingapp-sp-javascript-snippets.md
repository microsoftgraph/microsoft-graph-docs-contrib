---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const servicePrincipal = {
    appId: '0bf30f3b-4a52-48df-9a82-234910c4a086'
};

await client.api('/servicePrincipals')
	.post(servicePrincipal);

```