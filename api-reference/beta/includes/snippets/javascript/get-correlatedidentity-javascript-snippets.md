---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let correlatedIdentity = await client.api('/reports/correlations/{identityCorrelationId}/identities/{correlatedIdentityId}')
	.version('beta')
	.get();

```