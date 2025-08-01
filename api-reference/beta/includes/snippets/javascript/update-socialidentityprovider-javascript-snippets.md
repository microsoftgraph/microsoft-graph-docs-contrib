---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityProviderBase = {
  '@odata.type': '#microsoft.graph.socialIdentityProvider',
  clientSecret: '4294967296'
};

await client.api('/identity/identityProviders/Amazon-OAUTH')
	.version('beta')
	.update(identityProviderBase);

```