---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityProviderBase = {
  '@odata.type': '#microsoft.graph.openIdConnectIdentityProvider',
  responseType: 'id_token'
};

await client.api('/identity/identityProviders/Contoso-OIDC-00001111-aaaa-2222-bbbb-3333cccc4444')
	.version('beta')
	.update(identityProviderBase);

```