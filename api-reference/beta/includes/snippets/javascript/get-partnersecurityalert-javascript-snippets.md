---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let partnerSecurityAlert = await client.api('/security/partner/securityAlerts/d8b202fc-a216-3404-69ef-bdffa445eff6')
	.version('beta')
	.get();

```