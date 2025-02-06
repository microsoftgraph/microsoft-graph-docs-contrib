---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let containers = await client.api('/storage/fileStorage/containers')
	.version('beta')
	.filter('containerTypeId eq e2756c4d-fa33-4452-9c36-2325686e1082')
	.get();

```