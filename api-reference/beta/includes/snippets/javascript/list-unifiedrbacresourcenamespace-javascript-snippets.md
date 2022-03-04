---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resourceNamespaces = await client.api('/roleManagement/directory/resourceNamespaces')
	.version('beta')
	.get();

```