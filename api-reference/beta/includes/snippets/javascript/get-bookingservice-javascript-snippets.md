---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let bookingService = await client.api('/solutions/bookingbusinesses/contosolunchdelivery@contoso.com/services/57da6774-a087-4d69-b0e6-6fb82c339976')
	.version('beta')
	.get();

```