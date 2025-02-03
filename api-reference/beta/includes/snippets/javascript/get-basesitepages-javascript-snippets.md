---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let pages = await client.api('/sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pages')
	.version('beta')
	.get();

```