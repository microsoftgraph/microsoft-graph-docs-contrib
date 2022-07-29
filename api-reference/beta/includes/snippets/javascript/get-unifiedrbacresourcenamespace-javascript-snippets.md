---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let unifiedRbacResourceNamespace = await client.api('/roleManagement/directory/resourceNamespaces/microsoft.aad.b2c')
	.version('beta')
	.get();

```