---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userMfaSignInSummary = await client.api('/reports/authenticationMethods/userMfaSignInSummary')
	.version('beta')
	.get();

```