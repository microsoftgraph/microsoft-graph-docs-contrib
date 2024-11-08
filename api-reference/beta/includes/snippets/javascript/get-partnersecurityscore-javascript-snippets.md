---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let partnerSecurityScore = await client.api('/security/partner/securityScore')
	.version('beta')
	.get();

```