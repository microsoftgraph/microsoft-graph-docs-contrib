---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalCertificateAuthorityCertificate = {
  certificate: '-----BEGIN CERTIFICATE-----\nMIIBIjANBgkqh...',
  chain: '-----BEGIN CERTIFICATE-----\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AM...'
};

await client.api('/networkAccess/tls/externalCertificateAuthorityCertificates/365da4f6-6194-401d-b787-b09815be36e3')
	.version('beta')
	.update(externalCertificateAuthorityCertificate);

```