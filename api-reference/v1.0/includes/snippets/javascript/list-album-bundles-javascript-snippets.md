---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let bundles = await client.api('/drive/bundles?filter=bundle/album%20ne%20null')
	.filter('bundle/album ne null')
	.get();

```