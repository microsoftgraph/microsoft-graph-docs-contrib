---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let operations = await client.api('/me/mailFolders/AAMkAGVmMDEzM/operations')
	.version('beta')
	.get();

```