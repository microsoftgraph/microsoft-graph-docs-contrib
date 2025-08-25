---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let threatIntelligencePolicy = await client.api('/networkAccess/threatIntelligencePolicies/{threatIntelligencePolicyId}')
	.version('beta')
	.get();

```