---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authenticationStrengthPolicy = await client.api('/policies/authenticationStrengthPolicies/00000000-0000-0000-0000-000000000004')
	.get();

```