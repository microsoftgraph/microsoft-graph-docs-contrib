---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let users = await client.api('/users')
	.filter('imAddresses/any(i:i eq \'admin@contoso.com\')')
	.get();

```