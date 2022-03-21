---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let qnas = await client.api('/search/qnas')
	.version('beta')
	.get();

```