---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let staffMembers = await client.api('/solutions/bookingbusinesses/contosolunchdelivery@contoso.com/staffMembers')
	.version('beta')
	.get();

```