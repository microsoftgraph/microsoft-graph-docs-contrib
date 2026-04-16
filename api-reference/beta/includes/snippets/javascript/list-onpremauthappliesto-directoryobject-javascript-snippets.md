---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let appliesTo = await client.api('/policies/onPremAuthenticationPolicies/a6c034b8-621b-dee3-6abb-52cbce801fe9/appliesTo')
	.version('beta')
	.get();

```