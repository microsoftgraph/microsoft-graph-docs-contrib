---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityProviderBase = {
  '@odata.type': 'microsoft.graph.appleManagedIdentityProvider',
  displayName: 'Apple',
  developerId: 'qazx.1234',
  serviceId: 'com.contoso.app',
  keyId: '4294967296',
  certificateData: '******'
};

await client.api('/identity/identityProviders')
	.version('beta')
	.post(identityProviderBase);

```