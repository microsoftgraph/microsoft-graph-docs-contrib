---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const subscription = {
  expirationDateTime: '2016-03-22T11:00:00.0000000Z'
};

await client.api('/subscriptions/{id}')
	.update(subscription);

```