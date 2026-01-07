---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userSignInsByAuthMethodSummary = await client.api('/reports/authenticationMethods/userSignInsByAuthMethodSummary(period='d1')')
	.version('beta')
	.get();

```