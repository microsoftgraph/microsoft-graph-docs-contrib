---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityProviderBase = {
  '@odata.type': 'microsoft.graph.socialIdentityProvider',
  displayName: 'Login with Amazon',
  identityProviderType: 'Amazon',
  clientId: '00001111-aaaa-2222-bbbb-3333cccc4444',
  clientSecret: '42*****96'
};

await client.api('/identity/identityProviders')
	.version('beta')
	.post(identityProviderBase);

```