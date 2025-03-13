---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const passwordValidationInformation = {
    password: '1234567890'
};

await client.api('/users/validatePassword')
	.version('beta')
	.post(passwordValidationInformation);

```