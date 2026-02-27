---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let webCategory = await client.api('/networkaccess/connectivity/getWebCategoryByUrl(url='@url')')
	.version('beta')
	.get();

```