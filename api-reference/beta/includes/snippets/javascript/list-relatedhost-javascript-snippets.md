---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let relatedHosts = await client.api('/security/threatIntelligence/sslCertificates/MDJjODMzNDIzYzYwOTIzNjM1YTA0OTRhMmI2NThjYWM5NDFmM2FmMA==/relatedHosts')
	.version('beta')
	.get();

```