---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let containerTypes = await client.api('/storage/fileStorage/containerTypes')
	.version('beta')
	.get();

```