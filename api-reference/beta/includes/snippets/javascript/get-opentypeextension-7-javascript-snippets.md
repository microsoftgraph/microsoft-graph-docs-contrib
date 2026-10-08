---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let extension = await client.api('/sites/8f52f9ad-4f4f-4739-b682-7c0283207937/extensions/myCustomExtension')
	.version('beta')
	.get();

```