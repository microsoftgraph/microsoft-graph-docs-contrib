---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customQuestions = await client.api('/solutions/bookingBusinesses/Contosolunchdelivery@contoso.com/customQuestions')
	.get();

```