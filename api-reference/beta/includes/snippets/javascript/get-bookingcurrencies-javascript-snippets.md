---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let bookingCurrencies = await client.api('/solutions/bookingCurrencies')
	.version('beta')
	.get();

```