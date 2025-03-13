---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let softwareOathMethods = await client.api('/me/authentication/softwareOathMethods')
	.version('beta')
	.get();

```