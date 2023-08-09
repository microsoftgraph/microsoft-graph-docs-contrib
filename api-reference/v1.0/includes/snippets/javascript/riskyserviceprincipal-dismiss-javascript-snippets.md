---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const dismiss = {
  servicePrincipalIds: [
    '9089a539-a539-9089-39a5-899039a58990'
  ]
};

await client.api('/identityProtection/riskyServicePrincipals/dismiss')
	.post(dismiss);

```