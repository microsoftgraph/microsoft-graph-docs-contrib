---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tokenLifetimePolicy = {
    '@odata.id': 'https://graph.microsoft.com/beta/policies/tokenLifetimePolicies/4d2f137b-e8a9-46da-a5c3-cc85b2b840a4'
};

await client.api('/servicePrincipals/2a8f9e7a-af01-413a-9592-c32ec0e5c1a7/tokenLifetimePolicies/$ref')
	.version('beta')
	.post(tokenLifetimePolicy);

```