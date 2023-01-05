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
  displayName: 'Apple'
};

await client.api('/identity/identityProviders/Apple-Managed-OIDC')
	.update(identityProviderBase);

```