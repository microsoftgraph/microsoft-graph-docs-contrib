---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let autoAuditingConfiguration = await client.api('/security/identities/settings/autoAuditingConfiguration')
	.version('beta')
	.get();

```