---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let hardwareOathMethods = await client.api('/me/authentication/hardwareOathMethods')
	.version('beta')
	.get();

```