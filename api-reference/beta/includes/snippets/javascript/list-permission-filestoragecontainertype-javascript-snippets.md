---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let permissions = await client.api('/storage/fileStorage/containerTypes/de988700-d700-020e-0a00-0831f3042f00/permissions')
	.version('beta')
	.get();

```