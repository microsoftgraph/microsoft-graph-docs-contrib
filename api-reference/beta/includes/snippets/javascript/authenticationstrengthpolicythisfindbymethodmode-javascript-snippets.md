---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let findByMethodMode = await client.api('/policies/authenticationStrengthPolicies/findByMethodMode(authenticationMethodModes=["sms"])')
	.version('beta')
	.get();

```