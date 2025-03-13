---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const subscription = {
   expirationDateTime: '2023-01-12T18:23:45.9356913Z'
};

await client.api('/subscriptions/88aa8a88-88a8-88a8-8888-88a8aa88a88a')
	.update(subscription);

```