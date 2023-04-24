---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let bookingStaffMember = await client.api('/bookingBusinesses/contosolunchdelivery@contoso.onmicrosoft.com/staffMembers/71d64d0e-7225-49b6-b0b1-070d476cda51')
	.version('beta')
	.get();

```