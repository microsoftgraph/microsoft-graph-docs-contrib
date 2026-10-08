---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let onPremAuthenticationPolicies = await client.api('/policies/onPremAuthenticationPolicies')
	.version('beta')
	.get();

```