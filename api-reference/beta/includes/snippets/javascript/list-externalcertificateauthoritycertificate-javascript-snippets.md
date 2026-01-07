---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let externalCertificateAuthorityCertificates = await client.api('/networkAccess/tls/externalCertificateAuthorityCertificates')
	.version('beta')
	.get();

```