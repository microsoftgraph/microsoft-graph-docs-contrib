---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userRegistrationActivity = await client.api('/reports/authenticationMethods/userRegistrationActivity(period='d1')')
	.version('beta')
	.get();

```