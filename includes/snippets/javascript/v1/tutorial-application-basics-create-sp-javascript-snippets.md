---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const servicePrincipal = {
  appId: 'fc876dd1-6bcb-4304-b9b6-18ddf1526b62'
};

await client.api('/servicePrincipals')
	.post(servicePrincipal);

```