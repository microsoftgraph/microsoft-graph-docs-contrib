---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let application = await client.api('/applications/7bec5fd1-a25f-474c-a6ca-5492082c6a9b')
	.select('id,appId,displayName,requiredResourceAccess')
	.get();

```