---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let pages = await client.api('/sites/{site-id}/pages')
	.version('beta')
	.get();

```