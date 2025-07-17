---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let securityRequirement = await client.api('/security/partner/securityScore/requirements/{securityRequirementId}')
	.version('beta')
	.get();

```