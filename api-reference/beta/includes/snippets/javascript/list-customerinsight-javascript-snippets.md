---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customerInsights = await client.api('/security/partner/securityScore/customerInsights')
	.version('beta')
	.get();

```