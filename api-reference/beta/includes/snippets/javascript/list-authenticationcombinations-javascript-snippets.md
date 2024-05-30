---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let combinations = await client.api('/identity/conditionalAccess/authenticationStrength/combinations')
	.version('beta')
	.get();

```