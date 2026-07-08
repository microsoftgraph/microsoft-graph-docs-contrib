---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let identityCorrelation = await client.api('/reports/correlations/{identityCorrelationId}')
	.version('beta')
	.get();

```