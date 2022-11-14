---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resourceActions = await client.api('/roleManagement/directory/resourceNamespaces/microsoft.insights/resourceActions')
	.version('beta')
	.get();

```