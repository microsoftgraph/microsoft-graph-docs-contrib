---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let bookingCurrency = await client.api('/solutions/bookingCurrencies/USD')
	.version('beta')
	.get();

```