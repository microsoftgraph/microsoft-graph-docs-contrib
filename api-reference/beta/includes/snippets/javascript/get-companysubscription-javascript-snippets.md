---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let companySubscription = await client.api('/directory/subscriptions/f9c1ea2d-2c6e-4717-8c3b-7130812d70ba')
	.version('beta')
	.get();

```