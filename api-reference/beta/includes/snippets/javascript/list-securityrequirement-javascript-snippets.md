---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let requirements = await client.api('/security/partner/securityScore/requirements')
	.version('beta')
	.get();

```