---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let windows = await client.api('/me/settings/windows')
	.filter('windowsDeviceId eq \'67585f9f-ee4b-4dd8-808e-d88375d66ef7\'')
	.get();

```