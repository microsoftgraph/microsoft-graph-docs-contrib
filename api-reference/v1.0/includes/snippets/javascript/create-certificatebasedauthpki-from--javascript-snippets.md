---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const certificateBasedAuthPki = {
  displayName: 'Contoso PKI'
};

await client.api('/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations')
	.version('beta')
	.post(certificateBasedAuthPki);

```