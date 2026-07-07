---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let identities = await client.api('/reports/correlations/{identityCorrelationId}/identities')
	.version('beta')
	.get();

```