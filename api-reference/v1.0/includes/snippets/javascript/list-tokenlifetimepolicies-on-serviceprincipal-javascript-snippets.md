---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tokenLifetimePolicies = await client.api('/servicePrincipals/2a8f9e7a-af01-413a-9592-c32ec0e5c1a7/tokenLifetimePolicies')
	.get();

```