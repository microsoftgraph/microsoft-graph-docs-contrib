---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityProviderBase = {
  '@odata.type': '#microsoft.graph.oidcIdentityProvider',
  displayName: 'Contoso'
};

await client.api('/identity/identityProviders/ContosoOIDCIdentityProvider')
	.version('beta')
	.update(identityProviderBase);

```