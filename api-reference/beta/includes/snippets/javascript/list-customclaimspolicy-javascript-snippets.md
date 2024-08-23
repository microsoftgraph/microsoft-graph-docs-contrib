---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customClaimsPolicy = await client.api('/servicePrincipals/{servicePrincipalsId}/claimsPolicy')
	.version('beta')
	.get();

```