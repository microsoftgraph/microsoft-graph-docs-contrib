---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalCertificateAuthorityCertificate = {
  '@odata.type': '#microsoft.graph.networkaccess.externalCertificateAuthorityCertificate',
  name: 'Contoso Enterprise CA',
  commonName: 'Contoso Enterprise Root CA',
  organizationName: 'Contoso Ltd'
};

await client.api('/networkAccess/tls/externalCertificateAuthorityCertificates')
	.version('beta')
	.post(externalCertificateAuthorityCertificate);

```