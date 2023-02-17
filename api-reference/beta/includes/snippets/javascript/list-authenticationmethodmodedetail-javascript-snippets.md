---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authenticationMethodModes = await client.api('/identity/conditionalAccess/authenticationStrengths/authenticationMethodModes')
	.version('beta')
	.get();

```