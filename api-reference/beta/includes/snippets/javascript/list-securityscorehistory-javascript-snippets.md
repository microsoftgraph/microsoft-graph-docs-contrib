---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let history = await client.api('/security/partner/securityScore/history')
	.version('beta')
	.get();

```