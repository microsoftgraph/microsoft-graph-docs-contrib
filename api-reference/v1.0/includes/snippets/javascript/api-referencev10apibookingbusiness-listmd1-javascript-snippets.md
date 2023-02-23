---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let bookingBusinesses = await client.api('/solutions/bookingBusinesses?query=Adventure')
	.get();

```