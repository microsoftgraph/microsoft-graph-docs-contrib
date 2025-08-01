---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let hardwareOathAuthenticationMethod = await client.api('/me/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}')
	.version('beta')
	.get();

```