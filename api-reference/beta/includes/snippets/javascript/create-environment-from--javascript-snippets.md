---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const environment = {
  kind: 'azureSubscription',
  id: '/subscriptions/d34fd44c-ebfa-4a9c-bceb-9eeafe72ac15'
};

await client.api('/security/zones/f6e190cba2f64bcba703694aedb81712/environments')
	.version('beta')
	.post(environment);

```