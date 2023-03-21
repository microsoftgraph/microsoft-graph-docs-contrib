---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authenticationCombinations = await client.api('/identity/conditionalAccess/authenticationStrengths/authenticationCombinations')
	.version('beta')
	.get();

```