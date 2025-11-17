---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const autoAuditingConfiguration = {
  '@odata.type': '#microsoft.graph.security.autoAuditingConfiguration',
  isAutomatic: true
};

await client.api('/security/identities/settings/autoAuditingConfiguration')
	.version('beta')
	.post(autoAuditingConfiguration);

```