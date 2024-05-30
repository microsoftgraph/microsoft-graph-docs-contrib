---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let filteringPolicy = await client.api('/networkaccess/filteringPolicies/bb4e13cd-656b-499a-929f-d16bf16951ba')
	.version('beta')
	.expand('policyRules')
	.get();

```