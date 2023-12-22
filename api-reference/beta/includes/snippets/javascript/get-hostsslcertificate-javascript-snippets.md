---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let hostSslCertificate = await client.api('/security/threatIntelligence/hostSslCertificates/Y29udG9zby5jb20xNTUwMGZiOTY1NTE1MDVmMWVkYjI0ZGQzYjM2ZmNmZmRiNzY1ODMzYjgxMTg=')
	.version('beta')
	.get();

```