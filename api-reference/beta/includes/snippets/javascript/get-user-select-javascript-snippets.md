---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let user = await client.api('/users/{id | userPrincipalName}')
	.select('displayName,givenName,postalCode,identities')
	.get();

```