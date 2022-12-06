---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const domain = {
  id: 'contoso.com'
};

await client.api('/domains')
	.version('beta')
	.post(domain);

```