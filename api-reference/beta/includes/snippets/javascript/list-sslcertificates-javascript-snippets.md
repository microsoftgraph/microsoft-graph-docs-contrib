---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sslCertificates = await client.api('/security/threatIntelligence/sslCertificates')
	.version('beta')
	.search('subject/commonName:microsoft.com')
	.top(1)
	.get();

```