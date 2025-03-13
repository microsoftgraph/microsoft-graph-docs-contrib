---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const certificateAuthorityAsEntity = {
  isRootAuthority: true,
  certificate: 'MIIGrDCCBJSgAwIBAgITWgACAdWQXvWynRA6/AABAAIB....',
  issuer: 'ExampleIssuer',
  issuerSubjectKeyIdentifier: ' BA:AF:4A:02:4D:AA:A6:F1:3C:25:8E:AD:FA:38:98:CE:D9:23:32:D9'
};

await client.api('/directory/certificateAuthorities/certificateBasedApplicationConfigurations/0a6a9b97-b84c-406a-a703-14d699d1fbb1/trustedCertificateAuthorities')
	.version('beta')
	.post(certificateAuthorityAsEntity);

```