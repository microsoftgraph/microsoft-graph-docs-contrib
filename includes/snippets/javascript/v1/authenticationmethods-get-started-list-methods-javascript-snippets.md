---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let methods = await client.api('/users/CameronW@Contoso.com/authentication/methods')
	.get();

```