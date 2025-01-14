---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mutualTlsOauthConfiguration = {
  certificateAuthorities: [
    {
      isRootAuthority: true,
      certificateRevocationListUrl: 'http://acme.com/root.crl',
      deltaCertificateRevocationListUrl: null,
      certificate: 'Binary',
      issuer: 'acme Inc',
      issuerSubjectkeyIdentifier: 'SKI'
    }
  ]
};

await client.api('/directory/certificateAuthorities/mutualTlsOauthConfigurations/00001111-aaaa-2222-bbbb-3333cccc4444')
	.version('beta')
	.update(mutualTlsOauthConfiguration);

```