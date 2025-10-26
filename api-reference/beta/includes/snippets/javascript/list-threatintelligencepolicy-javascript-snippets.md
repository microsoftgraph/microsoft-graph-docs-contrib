---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let threatIntelligencePolicies = await client.api('/networkAccess/threatIntelligencePolicies')
	.version('beta')
	.get();

```