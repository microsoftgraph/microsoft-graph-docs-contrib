---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let bookingBusiness = await client.api('/solutions/bookingBusinesses/fabrikam@contoso.onmicrosoft.com')
	.get();

```