---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mailFolderOperation = await client.api('/me/mailFolders/AAMkAGVmMDEzM/operations/a384ae19-4f06-3576-81fc-795707bb498b')
	.version('beta')
	.get();

```