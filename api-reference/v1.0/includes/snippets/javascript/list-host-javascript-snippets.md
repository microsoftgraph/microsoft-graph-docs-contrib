---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sslCertificates = await client.api('/security/threatIntelligence/hosts/contoso.com/sslCertificates')
	.skip(5)
	.top(1)
	.get();

```