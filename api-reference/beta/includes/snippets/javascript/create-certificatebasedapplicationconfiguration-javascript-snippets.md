---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const certificateBasedApplicationConfiguration = {
  displayName: 'Tenant Trusted Certificate Chain of Trust for Application Configuration',
  description: 'The Trusted Certificate Chain of Trust containing a certificate chain used by the Tenant app policy, to only allow application certificates from this issuer.',
  'trustedCertificateAuthorities ': [
    {
      isRootAuthority: true,
      certificate: 'MIIHMDCCBRigAwIBAgITWgAAmdzMYKZPslw+twABAACZ'
    }
  ]
};

await client.api('/directory/certificateAuthorities/certificateBasedApplicationConfigurations')
	.version('beta')
	.post(certificateBasedApplicationConfiguration);

```