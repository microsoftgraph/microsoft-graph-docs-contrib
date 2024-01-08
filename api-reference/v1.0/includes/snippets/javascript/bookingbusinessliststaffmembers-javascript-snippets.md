---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let staffMembers = await client.api('/solutions/bookingBusinesses/Contosolunchdelivery@contoso.onmicrosoft.com/staffMembers')
	.get();

```