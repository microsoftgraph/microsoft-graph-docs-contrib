---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mutualTlsOauthConfiguration = {
  displayName: 'DoorCamera_Model_X_TrustedCAs',
  tlsClientAuthParameter: 'tls_client_auth_san_uri',
  certificateAuthorities: [
    {
      '@odata.type': 'microsoft.graph.certificateAuthority'
    }
  ]
};

await client.api('/directory/certificateAuthorities/mutualTlsOauthConfigurations')
	.version('beta')
	.post(mutualTlsOauthConfiguration);

```