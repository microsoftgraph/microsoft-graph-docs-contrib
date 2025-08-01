---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let exchangeSettings = await client.api('/users/megan@contoso.com/settings/exchange')
	.version('beta')
	.get();

```