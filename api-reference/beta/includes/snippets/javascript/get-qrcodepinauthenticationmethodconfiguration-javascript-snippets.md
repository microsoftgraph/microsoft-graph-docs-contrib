---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authenticationMethodConfiguration = await client.api('/policies/authenticationmethodspolicy/authenticationmethodconfigurations/qrcodepin')
	.version('beta')
	.get();

```