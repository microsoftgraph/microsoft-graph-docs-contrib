---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authenticationStrengthPolicies = await client.api('/policies/authenticationStrengthPolicies')
	.version('beta')
	.filter('allowedCombinations/any(x:x has \'sms, password\')')
	.get();

```