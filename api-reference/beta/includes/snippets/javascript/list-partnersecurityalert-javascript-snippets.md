---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let securityAlerts = await client.api('/security/partner/securityAlerts')
	.version('beta')
	.get();

```