---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let softwareOathAuthenticationMethod = await client.api('/me/authentication/softwareOathMethods/b172893e-893e-b172-3e89-72b13e8972b1')
	.get();

```