---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const domain = {
  forceTakeover: true
};

await client.api('/domains/contoso.com/verify')
	.version('beta')
	.post(domain);

```