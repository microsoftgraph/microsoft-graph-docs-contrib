---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customQuestions = await client.api('/bookingBusinesses/contosolunchdelivery@contoso.onmicrosoft.com/customQuestions')
	.version('beta')
	.get();

```